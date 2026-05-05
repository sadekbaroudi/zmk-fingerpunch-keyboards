# ZMK fingerpunch keyboards firmware

The purpose of this repository is to house all the ZMK boards and shields associated with fingerpunch keyboards.

This repo can be included as a module, meaning you can add your own zmk-config and add this repo as a zephyr project to make modifications to the shield and/or keymap in this repo.

I created an example zmk-config with a readme that explains how to do this. See the 
[zmk-config-fp-example](https://github.com/sadekbaroudi/zmk-config-fp-example) repository.

# Local builds

Please note that if you are building locally, the `config/west.yml` and `config/deps.yml` will not be automatically included. If you do this, you will need to include the necessary repositories.

Example local build string:  
`west build --pristine -b "nice_nano//zmk" -- -DSHIELD="vulpes_minora_left" -DZMK_EXTRA_MODULES='/home/sadek/git/zmk/zmk-fingerpunch-keyboards;/home/sadek/git/zmk/zmk-fingerpunch-controllers;/home/sadek/git/zmk/zmk-fingerpunch-vik'`

Note: As of ZMK v0.4 (Zephyr 4.1, Hardware Model v2), some third-party board identifiers require a `//zmk` suffix (e.g. `nice_nano//zmk`). Fingerpunch controllers like `vikoto` do not use this suffix.

# fingerpunch controllers and VIK

Note that this ZMK module also leverages [zmk-fingerpunch-controllers](https://github.com/sadekbaroudi/zmk-fingerpunch-controllers) and [zmk-fingerpunch-vik](https://github.com/sadekbaroudi/zmk-fingerpunch-vik).

If you're looking to use a non-fingerpunch board with a fingerpunch controller, see the [zmk-fingerpunch-controllers](https://github.com/sadekbaroudi/zmk-fingerpunch-controllers) ZMK module.

If you have implemented VIK on a keyboard or module, you can look at the [zmk-fingerpunch-vik](https://github.com/sadekbaroudi/zmk-fingerpunch-vik) ZMK module.
