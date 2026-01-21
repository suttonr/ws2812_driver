# WS2812 FPGA Driver

This project provides VHDL code for Lattice MachXO2/3 devices to efficiently drive multiple strings of WS2812 LEDs. It offloads the timing-critical WS2812 protocol from a host microcontroller or single-board computer (SBC) to the FPGA.

## Overview

The driver implements an SPI slave interface that receives pixel data and stores it in internal dual-port distributed RAM (frame buffers). A dedicated WS2812 controller then reads from these buffers and generates the precise pulse-width modulated signals required by the LEDs.

### Key Features
- **SPI Interface:** High-speed data transfer from host.
- **Multiple Channels:** Supports driving multiple LED strings in parallel (currently configured for 21 channels).
- **Buffered Output:** Decouples host communication from LED refresh timing.
- **Hardware Accelerated:** Precise WS2812 timing guaranteed by FPGA logic.

## System Architecture

The system typically consists of a **Raspberry Pi Zero 2W** (replacing the original Micropython-based modules) acting as the host, communicating via SPI with the Lattice FPGA.

### Block Diagram

```mermaid
flowchart TD
    subgraph Host_Group [Host: Raspberry Pi Zero 2W]
        RPi[Raspberry Pi Zero 2W]
    end

    subgraph FPGA_Group [Hardware: Lattice FPGA]
        FPGA[Lattice MachXO2/3 FPGA]
    end
    
    subgraph Matrix_Group [LED Matrix 448x24 Pixels]
        direction LR
        subgraph Col1 [Col 1]
            direction TB
            P0[Port 0] --> M00[64x8]
            P1[Port 1] --> M01[64x8]
            P2[Port 2] --> M02[64x8]
        end
        subgraph Col2 [Col 2]
            direction TB
            P3[Port 3] --> M10[64x8]
            P4[Port 4] --> M11[64x8]
            P5[Port 5] --> M12[64x8]
        end
        subgraph Col7 [Col 7]
            direction TB
            P18[Port 18] --> M60[64x8]
            P19[Port 19] --> M61[64x8]
            P20[Port 20] --> M62[64x8]
        end
    end

    RPi -- "SPI (48MHz)" --> FPGA
    FPGA --> P0 & P1 & P2 & P3 & P4 & P5 & P18 & P19 & P20
```

## Communication Protocol

The FPGA acts as an SPI Slave. Data is sent in 6-byte packets to update individual pixels.

### SPI Packet Format

```mermaid
flowchart LR
    subgraph Fields [6-Byte SPI Packet]
        F0[Header: 0x0F]
        F1["Port[7:1]<br/>Addr[0]"]
        F2["Addr Bits [7:0]"]
        F3["Green[7:0]"]
        F4["Blue[7:0]"]
        F5["Red[7:0]"]
    end
```
```mermaid
flowchart LR
    subgraph Fields [5-Byte SPI Packet]
        F0[Header: 0x0E]
        F1["Port[7:1]<br/>Addr[0]"]
        F2["Addr[7:0]"]
        F3["Red[7:3] Green[2:0]"]
        F4["Green[7:5] Blue[4:0]"]
    end
```


1. **Byte 0: Header**
   - Fixed value: `0x0F`
2. **Byte 1: Control/Port**
   - Bits [7:1]: Frame Buffer / Port selection (0-20).
   - Bit [0]: Most Significant Bit (MSB) of the Pixel Address (Bit 8).
3. **Byte 2: Address**
   - Bits [7:0]: Lower 8 bits of the Pixel Address.
4. **Byte 3: Green** (8-bit intensity)
5. **Byte 4: Blue** (8-bit intensity)
6. **Byte 5: Red** (8-bit intensity)

*Note: The color order in the SPI packet is G-B-R to match the internal WS2812 transmission order.*

## Interaction with py_marquee

This driver is designed to work with the [py_marquee](https://github.com/suttonr/py_marquee) Python library. The library handles the high-level matrix logic, font rendering, and animations, sending raw pixel updates to the FPGA over the SPI bus.
