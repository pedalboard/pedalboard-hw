# Pedalboard Audio/MIDI Processer Hardware

An open hardware for processing audio and/or MIDI data on a pedalboard.

| Open Source Hardware | OSHWA Certification|
|---|---|
| ![](https://i0.wp.com/www.oshwa.org/wp-content/uploads/2014/03/oshw-logo-200-px.png) | [<img src="img/certification-mark-CH000018-stacked.png" alt="OSHWA" width="200"/>](https://certification.oshwa.org/ch000018.html) |


This PCB is designed with [KiCad 7](https://www.kicad.org/blog/2023/03/KiCad-7.0.1-Release/)

## Design Goals
- No screen by default. (Although can be added easily, if needed).
  Usually small screens are not really useful on stage.
  Instead feedback is done with RGB Leds and an optional RGB LED Matrix readable from distance.
- Modular Design:
  - The device can be used:
     1. only for MIDI (Low Cost), including USB MIDI
     1. only for Audio
     1. both for MIDI and Audio, communication between the modules is done via MIDI.
   - MIDI Moudule has independent microcontroller firmware with immediate startup
   - Optional Power supply module if no USB Power is available on the board.
- Maker friendly
  - No SMD soldering, only through hole components are used.
  - Use of existing modules for the heavy lifting
- Good avialability of components
- Flat design: target for case height: 30mm

## Modules

### Audio Processing

- Raspberry Pi [Compute Module 4](https://www.raspberrypi.com/products/compute-module-4/)
    - Flexibile memory options for cost optimisation
    - (optional) WiFi
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
  Alternative: Instead of a single LED, for the 6 foot buttons,
  a [LED-ring](https://github.com/pedalboard/pedalboard-led-ring) can be used.
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
Flexible power supply options

- (Optional) 9-36V Power Input to connect to usual pedalboard power supply units.
  - 3A isolated DC-DC converter
  - Also powers MIDI module
- Board can also be powered with USB power.
  - into the micro USB connector of the Pico board. Supports ORing with the onboard PSU.

![Modules](https://pedalboard.github.io/pedalboard-hw-site/latest/Schematic/pedalboard-hw-schematic.svg)

## Generated Hardware Documentation

Downloadable [Assets](https://pedalboard.github.io/pedalboard-hw-site/latest/Browse/pedalboard-hw-navigate.html) are generated with [KiBot](https://github.com/INTI-CMNB/KiBot)

## Fabrication

* [Generated iBOM](https://pedalboard.github.io/pedalboard-hw-site/latest/Assembly/pedalboard-hw-ibom.html)
* [Digi-Key shared list](https://www.digikey.ch/de/mylists/list/DJ3I9KG222)
* [PCBWay manifacturing](https://www.pcbway.com/project/shareproject/Open_Source_Pedalboard_Platform_8e065d23.html)
* For detailed build instruction follow the [wiki](https://github.com/pedalboard/pedalboard-hw/wiki)

## 3D Views

![Top View](https://pedalboard.github.io/pedalboard-hw-site/latest/3D/pedalboard-hw-3D_top.png)
![Bottom View](https://pedalboard.github.io/pedalboard-hw-site/latest/3D/pedalboard-hw-3D_bottom.png)
![30 deg View](https://pedalboard.github.io/pedalboard-hw-site/latest/3D/pedalboard-hw-3D_top30deg.png)


## Mechanical Parts

Mounting case can be found in the [pedalboard-case](https://github.com/pedalboard/pedalboard-case) project.

![Case](https://raw.githubusercontent.com/pedalboard/pedalboard-case/main/generated/pedalboard-case.png)

SMT spacers:
- https://www.digikey.ch/de/products/detail/w%C3%BCrth-elektronik/9774027151R/5320625

## Notes

### KiCad component sources

* [HifiBerry DAC/ADC+](https://github.com/hifiberry/kicad_template_dac_adc_stage)
* [RPI pico](https://github.com/ncarandini/KiCad-RP-Pico)
* [MIDI DIN5/180](https://github.com/nebs/eurocad)
* [PIHat Mechanical Spec](https://github.com/raspberrypi/hats/blob/master/hat-board-mechanical.pdf)

## Release

The release procedure is not yet fully automated. Please follow below steps:

1. Bump Version
  - In Schematic Editor: File -> Page Settings -> Update Issue Date and Revision (with export to other sheets)
  - In PCB Editor: File -> Page Settings -> Update Issue Date and Revision
  - Update CHANGES.md (release date)
  - Update README.md
     - link the versioned docs.
     - link to a (optinally new) Digikey revision

2. Create a Tag and push it.

3. Create a release.
  - Generate Release Notes
  - Add the relevant content from CHANGES.md
  - Download the generated_output.zip file from the tagged Action run.
  - Add the version to generated_output-x.y.z.zip
  - Upload the zip as artifact of the release

4. Tag the pedalboard-hw-site commit of the tagged Action run.
  - Add a link to the tag on pedalboard-hw-site also in the release descritpion
  - copy the tagged files into a subdirectory

5. Bump the version on main to RC1 (as described above)
  - Change old version for diff on pedalboard-hw.kibot.yaml (2 lines!)
  - Add a new Release in CHANGES.md
