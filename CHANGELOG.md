# Change Log

TODO:

- 3.3V to 5V adapter for LEDs
- Compatiblility to compatible with the [Hammond Manufacturing 1590DD](https://www.hammfg.com/files/parts/pdf/1590DD.pdf) case.
- Additional analog input
- Analog input filter?

## [3.0.0-RC1] - CM4 - TBD 


## [2.1.0-RC1] - LED rings - TBD

### Added

- [Pedalboard LED Ring](https://github.com/pedalboard/pedalboard-led-ring) added.

### Changed

- Use of [SMD Spacers](https://www.digikey.ch/de/products/detail/w%C3%BCrth-elektronik/9774027151R/5320625) 
  under the foot buttons for improved mechanical stabilty. 
- Changed the power supply for LEDs from 3.3V to 5V. Allows the use of much larger LED matrices.

## [2.0.0] - 2023-04-24

### Added

- Silkscreen information for connectors to avoid having to refer to the schematics
- Reverse power protection circuit added to Power input.
- Power Raspberry Pico from 5V power supply
- Add internal MIDI connection to free up USB.

### Changed

- BOM: Change LEDs which support 3.3V
- Swap SW A with SW D to cleanup connections

### Fixed

## [1.0.2] - 2023-04-04

### Fixed

- Fix the USB connection between Raspberry Pi and Pico

## [1.0.1] - 2023-03-27

First manufactured version
