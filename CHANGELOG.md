# Change Log

FUTURE-IMPROVEMENTS:

- Better output drivers (currently the DAC output of the HiFi Berry board are used)
    - survive 48V phantom power on output
    - Differential outputs (e.g. https://thatcorp.com/datashts/THAT_1606-1646_Datasheet.pdf)
    - Output stage https://www.amb.org/audio/
- Better input protection
- USB Hub (to access other pedals over USB)
- USB slave (for audio data)
- SD Card
- Support more sound cards (e.g. https://shop.audioinjector.net)`
- Our own sound card.
- Improve reverse polarity protection.

## [3.0.0] - Cost optimization - 2023-10-19 

### Changed

- Use SMD components for MIDI I/O
- Use SMD actuator buttons
- Use concrete PSU implemented with SMD components.
- Use MOS FET instead of diode for reverse polarity protection.
- Use official solder jumper instead of homegrown PCB fuses.
- Increase size of PCB and use 5V zone around the edges.
- Use Connector_JST (XH) for MIDI and LED Ext.
- Directly interface CM4 (Remove CM4 Nano carrier)
- Replace the Pico by directly use RP2040

### Added

- Compatibility with the [Hammond Manufacturing 1590DD](https://www.hammfg.com/files/parts/pdf/1590DD.pdf) case.
- Additional analog (EXP 2) input
- Fidcuials for PnP
- Alternative screw terminal for power input


## [2.1.0] - LED rings - 2023-08-09

### Added

- [Pedalboard LED Ring](https://github.com/pedalboard/pedalboard-led-ring) added.

### Changed

- Use of [SMD Spacers](https://www.digikey.ch/de/products/detail/w%C3%BCrth-elektronik/9774027151R/5320625)
  under the foot buttons for improved mechanical stability.
- The power supply for LEDs from 3.3V to 5V. Allows the use of much larger LED matrices.
- Therefore, a level shifter from 3.3V to 5V had to be added.

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
