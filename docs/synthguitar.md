---
layout: gallery
title: Synth Guitar
no_menu_item: true # required only for this example website because of menu construction
support: [jquery, gallery]
permalink: /synthguitar/
---

## Synth Guitar
Michael Donovan

michael@mdonovan.dev

Northwestern University

EECS397: Digital Luthier with Prof. Bryan Pardo


The goal of the Synth Guitar project is to create a digital interface for guitarists, combining the familiar interface of the guitar with expanded expressive capabilities and the wide timbral range of a digital synthesizer. Most existing controllers for synthesizers and digital instruments are based on piano-style keyboards which, for someone who is primarily a guitarist, is not the most intuitive interface. SynthGuitar provides an interface that is instantly familiar to a guitarist while also offering an expanded range of expressive and tonal possibilities.

## Hardware
[Axoloti Core](https://www.axoloti.com/product/axoloti-core/), a development board designed for synthesizer applications, handles sensor input as well as synthesis. Using Axoloti allows the instrument to be completely self contained and untethered from a computer or external hardware synthesizer to handle sound synthesis unlike many other similar controllers. 

### Sensors
Primary input is handled through four 500mm [ThinPots](http://www.spectrasymbol.com/product/thinpot/) and four force sensitive resistors. The ThinPots act as "strings" - finger position on each thinpot is used to control the pitches of each of four oscillators. Pitch can be quantized to an arbitrary scale or can be continuous to allow violin-like pitch expressivity. The four force sensitive resistors are used to control the volume of each oscillator as well as the cutoff of a lowpass filter. Pressing on an FSR triggers the sound of the corresponding "string". Playback continues until pressure is removed. Varying the pressure applied to the FSR varies the cutoff of the filter, adding an additional dimension of expressivity.


## Software
The example patch includes two modes: a four-voice polyphonic supersaw synthesizer and a basic drum mode. Modes can be switched with a MIDI cc message

{% include gallery-layout.html gallery=site.data.galleries.gallery %}
