# ffkb holyiot v1

I created this folder in a shield just to inform those looking for this, that because it's an intergrated controller, you can use the board itself to compile. See the following directory in this repository:  
`boards/arm/ffkb_holyiot_v1`

Example build string:
```
west build --pristine -b "ffkb_holyiot_v1" -- -DZMK_EXTRA_MODULES='/home/sadek/git/firmware/zmk/zmk-fingerpunch-keyboards;/home/sadek/git/firmware/zmk/zmk-fingerpunch-controllers/;/home/sadek/git/firmware/zmk/zmk-fingerpunch-vik;'
```
