# Pedalboard Audio/MIDI Processer Hardware

An open hardware for processing Audio and/or MIDI data on a pedalboard.

This project was created with [KiCad 7](https://www.kicad.org/blog/2023/02/Version-7.0.0-Released/)

## Modules

### Audio Processing
- Raspberry Pi [Compute Module 4](https://www.raspberrypi.com/products/compute-module-4/)
    - WiFi (optional)
    - Flexibile memory options for cost optimisation
- Waveshare [CM4 Nano A](https://www.waveshare.com/wiki/CM4-NANO-A)
    - Low cost CM4 carrier with standard GPIO header and USB-C
- HiFiBerry [DAC+ ADC PRO](https://www.hifiberry.com/shop/boards/hifiberry-dac-adc-pro/)
    - Hiqh Quality Stereo Input/Output
    - Very low latency (around 2ms when using ELK Audio OS)

### MIDI and Control Surface
- 200mm x 100mm control surface
- Raspberry Pi [Pico](https://www.raspberrypi.com/products/raspberry-pi-pico/) processor
- 6 Buttons 
- 2 Rotary Encoders
- Input for Expression Pedal
- 10 RGB Leds
- (Optional) RGB Matrix (Instead of screen
- Flexibile MIDI I/O
  - DIN 5 Plug
  - or 3.5mm Mini TRS Plug
  - and/or Header Pins for wiring off-board plug
  - USB Midi
  - Wifi

### Power Supply
- 9-36V Power Input to feed with Pedalboard Power Supply
- 3A isolated DC-DC converter

## Design Goals
- No Screen by default. (Although can be added easily, if needed).
  Usually small screens are not really useful on stage.
  Instead feedback is done with RGB Leds and an optional RGB LED Matrix readable from distance.
- Modular Design: 
  - The device can be used:
     1. only for MIDI (Low Cost), including USB MIDI
     1. only for Audio
     1. both for MIDI and Audio, communication between the modules is done via USB MIDI.
   - MIDI Moudule has independent microcontroller firmware with immediate startup
   - Optional Power supply module if no USB Power is available on the board.
- Maker friendly
  - No SMD soldering, only through hole components are used.
  - Use of existing modules for the heavy lifting
- Good avialability of components

## Improvements for future revisions
- Better output drivers (currently the DAC output of the HiFi Berry Board are used)
    - survive 48V Phantom Power on output
    - Differential Ouptuts (e.g. https://thatcorp.com/datashts/THAT_1606-1646_Datasheet.pdf)
    - Output stage https://www.amb.org/audio/
- Better input Protection

## Generated Hardware Documentation

Downloadable [Assets](https://pedalboard.github.io/pedalboard-hw-site/Browse/pedalboard-hw-navigate.html) are generated with [KiBot](https://github.com/INTI-CMNB/KiBot)

## Fabrication

* [Generated iBOM](https://pedalboard.github.io/pedalboard-hw-site/Assembly/pedalboard-hw-ibom.html)
* [Digi-Key shared list](https://www.digikey.ch/de/mylists/list/DJ3I9KG222)
* [PCBWay manifacturing](https://www.pcbway.com/project/shareproject/Open_Source_Pedalboard_Platform_8e065d23.html)

## 3D Views

![Top View](https://pedalboard.github.io/pedalboard-hw-site/3D/pedalboard-hw-3D_top.png)
![Bottom View](https://pedalboard.github.io/pedalboard-hw-site/3D/pedalboard-hw-3D_bottom.png)
![30 deg View](https://pedalboard.github.io/pedalboard-hw-site/3D/pedalboard-hw-3D_top30deg.png)

## Notes

### Mechanical Components

Mounting case will be designed in a separate project

* https://www.cliffuk.co.uk/products/switches/FC7125.pdf

### KiCad component sources

* [HifiBerry DAC/ADC+](https://github.com/hifiberry/kicad_template_dac_adc_stage)
* [RPI pico](https://github.com/ncarandini/KiCad-RP-Pico)
* [MIDI DIN5/180](https://github.com/nebs/eurocad)
* [PIHat Mechanical Spec](https://github.com/raspberrypi/hats/blob/master/hat-board-mechanical.pdf)

### Ideas

* Ribbon Mic: https://www.bumblebeepro.com/rm-5-diy-ribbon-mic-full-kit/
