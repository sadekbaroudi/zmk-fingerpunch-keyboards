# vulpes majora v1

I created this folder in a shield just to inform those looking for this, that because it's an intergrated controller, you can use the board itself to compile. See the following directory in this repository:  
`boards/arm/vulpes_majora_v1`

Example build string:
```
west build --pristine -b "vulpes_majora_v1" -- -DSHIELD="vik_pmw3360_per56" -DZMK_EXTRA_MODULES='/home/sadek/zmk-fingerpunch-keyboards;/home/sadek/zmk-fingerpunch-controllers;/home/sadek/zmk-fingerpunch-vik;/home/sadek/chiptuner-zmk-module;'
```
