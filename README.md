# Pedalboard Audio/MIDI Processer Hardware

An open hardware for processing Audio and/or MIDI data on a pedalboard.

This project was created with [KiCad 7](https://www.kicad.org/blog/2023/02/Version-7.0.0-Released/)

## Modules

### Audio Processing
- RPI Compute Module 4
- HIFIBERRY DAC+ ADC PRO

### MIDI and Control Surface
- RPI pico processor
- 6 Buttons
- 2 Rotary Encoders
- Input for Expression Pedalb
- 10 RGB Leds
- Optional RGB Matrix
- MIDI I/O

## Design Goals
- Modular Design (Audio Processor is optional)
- Maker friendly
  - No SMD soldering
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

### Custom KiCad components

* [HifiBerry DAC/ADC+](https://github.com/hifiberry/kicad_template_dac_adc_stage)
* [RPI pico](https://github.com/ncarandini/KiCad-RP-Pico)
* [MIDI DIN5/180](https://github.com/nebs/eurocad)
* [PIHat Mechanical Spec](https://github.com/raspberrypi/hats/blob/master/hat-board-mechanical.pdf)

### Ideas

* Output stage https://www.amb.org/audio/
* Ribbon Mic: https://www.bumblebeepro.com/rm-5-diy-ribbon-mic-full-kit/
