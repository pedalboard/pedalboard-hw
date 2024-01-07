# Change Log

## TODO
- support differential output
- two more mounting holes
- clearance around mounting holes
- use smaller XTAL Oscillator:Oscillator_SMD_Abracon_ASDMB-4Pin_2.5x2.0mm
- Placement higth for micro buttons
- 3.3v LED on RP2040?
- SMD Debug connectors

## [3.2.0-RC1] - Cost Optimisation:  Small improvments - TBD

### Added
- OSHW Symbol
- Silkscreen text for reset/boot switches
- Silkscreen text for MIDI controller inputs
- Git revision is added to schematics and PCB
- Pull-up resistors for I2C bus

## Changed
- Remove fiducials and holes from BOM
- Change title to Open Pedalboard Mainboard
- Use "knowout" text style for better visibility of connectors
- Swap power symbol to better refelct the terminal connector
- Replace HiFi Berry by pedalboard-soundcard

## [3.1.1] - Cost Optimisation:  Bug Fixes - 2023-12-05

### Changed

- Increase min. through hole size to 0.3mm

## [3.1.0] - Cost Optimisation:  Bug Fixes - 2023-12-04

### Added
- Stemma connector for displays
- Switch for boot mode and reset of RP2040
- 2 more LED rings for rotary encoders

### Changed
- Increase activity LED resistor to reduce brigtness
- Stemma compatibility for LED out
- Smaller JST PH connectors for MIDI IN/OUT

### Fixed

- Fix USB boot mode bug (wrong wiring)
- Fix CM4 Power LED (invert logic)
- Use power supply based on CM4 IO Board V5
- Decrease stencil sizes (10%) for RP2040- and CM4 connector pads

## [3.0.1] - Cost optimization: Prototype Production Release - 2023-10-20

### Changed

- Increase slot size to (restriction of PCBway)

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
