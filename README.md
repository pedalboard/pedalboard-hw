# Pedalboard Audio/MIDI Processer Hardware

An open hardware for processing Audio and/or MIDI data on a pedalboard.

This project was created with [KiCad 7](https://www.kicad.org/blog/2023/02/Version-7.0.0-Released/)

## Modules

### Audio Processing
- Raspberry Pi [Compute Module 4](https://www.raspberrypi.com/products/compute-module-4/)
    - WiFi (optional)
    - Flexibile memory options for cost optimisation
- HiFiBerry [DAC+ ADC PRO](https://www.hifiberry.com/shop/boards/hifiberry-dac-adc-pro/)
    - Hiqh Quality Stereo Input/Output
    - Very low latency (around 2ms when using ELK Audio OS)

### MIDI and Control Surface
- 200mm x 100mm control surface
- Raspberry Pi [Pico](https://www.raspberrypi.com/products/raspberry-pi-pico/) processor
- 6 Buttons 
- 2 Rotary Encoders
- Input for Expression Pedalb
- 10 RGB Leds
- (Optional) RGB Matrix (Instead of screen
- Flexibile MIDI I/O
  - DIN 5 Plug
  - or 3.5mm Mini TRS Plug
  - and/or Header Pins for wiring off-board plug
  - USB Midi
  - Wifi

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
- Maker friendly
  - No SMD soldering, only through hole components are used.
  - Use of existing modules for the heavy lifting
- Good avialability of components

## Future Improvements
- Better Output Drivers (currently the DAC output of the HiFi Berry Board are used)
    - survive 48V Phantom Power on output
    - Differential Ouptuts
- Input Protection


## 3D View

The Design is still in progress, the pictures are previews.

![Front View](img/pedalboard-hw-front.png)
![Rear View](img/pedalboard-hw-back.png)

## BOM

Generated with eeschema -> Tools -> Generate BOM -> bom_csv_grouped_extra

with additional field "Supplier" (add to the end of the command line)

* [CSV version of BOM](./pedalboard-hw.csv)
* [Digi-Key shared list](https://www.digikey.ch/de/mylists/list/DJ3I9KG222)



## Notes

### Mechanical Components

Mounting case will be designed in a separate project

* https://www.cliffuk.co.uk/products/switches/FC7125.pdf

### Custom KiCad components

* [HifiBerry DAC/ADC+](https://github.com/hifiberry/kicad_template_dac_adc_stage)
* [RPI pico](https://github.com/ncarandini/KiCad-RP-Pico)
* [MIDI DIN5/180](https://github.com/nebs/eurocad)
* [PIHat Mechanical Spec](https://github.com/raspberrypi/hats/blob/master/hat-board-mechanical.pdf)

### Ideas

* Output stage https://www.amb.org/audio/
* Ribbon Mic: https://www.bumblebeepro.com/rm-5-diy-ribbon-mic-full-kit/
