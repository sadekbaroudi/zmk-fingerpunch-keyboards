# ZMK fingerpunch keyboards firmware

The purpose of this repository is to house all the ZMK boards and shields associated with fingerpunch keyboards.

This repo can be included as a module, meaning you can add your own zmk-config and add this repo as a zephyr project to make modifications to the shield and/or keymap in this repo.

I created an example zmk-config with a readme that explains how to do this. See the 
[zmk-config-fp-example](https://github.com/sadekbaroudi/zmk-config-fp-example) repository.

# Local builds

Please note that if you are building locally, the `config/west.yml` and `config/deps.yml` will not be automatically included. If you do this, you will need to include the necessary repositories. In addition to this, as of now, pointing devices has not been merged into zmk, so you'll need to checkout the appropriate branch. See the repo currently being used in `config/west.yml`. So in this case, you'd need to check out petejohanson's zmk repo, and switch to the `feat/pointers-move-scroll` branch if using pointing devices.

Example local build string:  
`west build --pristine -b "nice_nano_v2" -- -DSHIELD="vulpes_minora_left" -DZMK_EXTRA_MODULES='/home/sadek/git/zmk/zmk-fingerpunch-keyboards;/home/sadek/git/zmk/zmk-fingerpunch-controllers;/home/sadek/git/zmk/zmk-fingerpunch-vik;/home/sadek/git/zmk/cirque-input-module'`

# fingerpunch controllers and VIK

Note that this ZMK module also leverages [zmk-fingerpunch-controllers](https://github.com/sadekbaroudi/zmk-fingerpunch-controllers) and [zmk-fingerpunch-vik](https://github.com/sadekbaroudi/zmk-fingerpunch-vik).

If you're looking to use a non-fingerpunch board with a fingerpunch controller, see the [zmk-fingerpunch-controllers](https://github.com/sadekbaroudi/zmk-fingerpunch-controllers) ZMK module.

If you have implemented VIK on a keyboard or module, you can look at the [zmk-fingerpunch-vik](https://github.com/sadekbaroudi/zmk-fingerpunch-vik) ZMK module.
