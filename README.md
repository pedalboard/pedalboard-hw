# Pedalboard Audio/MIDI Processer Hardware

An open hardware for processing audio and/or MIDI data on a pedalboard.

This PCB is developed with [KiCad 7](https://www.kicad.org/blog/2023/02/Version-7.0.0-Released/)

## Modules

### Audio Processing

- Raspberry Pi [Compute Module 4](https://www.raspberrypi.com/products/compute-module-4/)
    - Flexibile memory options for cost optimisation
    - optional WiFi
- Waveshare [CM4 Nano A](https://www.waveshare.com/wiki/CM4-NANO-A)
    - Small form factor CM4 carrier with standard GPIO header and USB-C power input
- HiFiBerry [DAC+ ADC PRO](https://www.hifiberry.com/shop/boards/hifiberry-dac-adc-pro/)
    - Hiqh Quality Stereo Input/Output
    - Very low latency (around 2ms when using ELK Audio OS)

### MIDI and Control Surface
- 200mm x 100mm control surface. Still not too large but can hold 6 buttons.
- Raspberry Pi [Pico](https://www.raspberrypi.com/products/raspberry-pi-pico/) processor with
  a custom [firmware](https://github.com/pedalboard/pedalboard-midi) 
  that can be updated via USB or also from the audio module via WLAN.
- 6 Buttons supporting to trigger on push, on release, long and short presses
- 2 Rotary Encoders with additional push button
- Input for Expression Pedal
- 10 RGB Leds: RGB Leds are visible from long distance and with the color its possible
  to express a lot of information. For example some intensity value can be expressed with a 
  color gradient.
- (Optional) RGB Matrix: in a Matrix of RGB Pins even more information can be expressed and
  readable from a large distance. For example the current preset number or a db meter
  value.
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
- No screen by default. (Although can be added easily, if needed).
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

### TODO (before next fabrication)
- Add more description text on silkscreen.

### Mechanical Components

Mounting case will be designed in a separate project

* https://www.cliffuk.co.uk/products/switches/FC7125.pdf

### Improvements for future revisions
- Better output drivers (currently the DAC output of the HiFi Berry board are used)
    - survive 48V phantom power on output
    - Differential ouptuts (e.g. https://thatcorp.com/datashts/THAT_1606-1646_Datasheet.pdf)
    - Output stage https://www.amb.org/audio/
- Better input protection
- Reverse polarity protection for PSU
- Support more sound cards (e.g. https://shop.audioinjector.net)`

### KiCad component sources

* [HifiBerry DAC/ADC+](https://github.com/hifiberry/kicad_template_dac_adc_stage)
* [RPI pico](https://github.com/ncarandini/KiCad-RP-Pico)
* [MIDI DIN5/180](https://github.com/nebs/eurocad)
* [PIHat Mechanical Spec](https://github.com/raspberrypi/hats/blob/master/hat-board-mechanical.pdf)

### Ideas

* Ribbon Mic: https://www.bumblebeepro.com/rm-5-diy-ribbon-mic-full-kit/
