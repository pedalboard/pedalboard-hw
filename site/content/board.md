---
title: Board
type: board
weight: 20
---

## Audio Processing

- Raspberry Pi [Compute Module 4](https://www.raspberrypi.com/products/compute-module-4/) or [Compute Module 5](https://www.raspberrypi.com/products/compute-module-5/)
  - Flexible memory options for cost optimisation
  - Optional WiFi
  - Very low latency (~2ms with [ELK Audio OS](https://www.elk.audio/how-elk-audio-os-works))
- [Pedalboard Soundcard](https://pedalboard.github.io/pedalboard-soundcard/latest/) — two channel differential I/O
- or HiFiBerry [DAC+ ADC PRO](https://www.hifiberry.com/shop/boards/hifiberry-dac-adc-pro/) — high quality stereo I/O
- USB-A host + Mini USB device mode (firmware update)

## MIDI and Control Surface

- Raspberry [RP-2040](https://datasheets.raspberrypi.com/rp2040/rp2040-datasheet.pdf) with custom [firmware](https://github.com/pedalboard/pedalboard-midi) (USB or WLAN update)
- 6 foot buttons (push, release, long/short press)
- 2 rotary encoders with push button
- 2 expression pedal inputs
- 8 [RGB LED rings](https://github.com/pedalboard/pedalboard-led-ring) around each foot button
- 2 RGB status LEDs
- STEMMA I2C connector for 2 OLED displays
- I2C EEPROM for config storage
- Flexible MIDI I/O: DIN 5, 3.5mm TRS, header pins, USB MIDI

## Power Supply

- 6–28V DC input (standard pedalboard PSU) with 3A buck converter
- USB powered option for MIDI module
- ORing support between onboard PSU and USB power
