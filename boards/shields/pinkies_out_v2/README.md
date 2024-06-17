# pinkies out v2

## encoder support

Please note that the pinkies out v2 **only** supports encoders with the nice!nano. You cannot use vikoto or svlinky and get the encoders, as it uses the 2 pins in the center of the nice!nano for the encoder pins.

You'll see this in the `pinkies_out_v2.overlay` file, shown below

```
        // Left encoder
        encoder_1: encoder_1 {
            compatible = "alps,ec11";
            a-gpios = <&gpio1 7 (GPIO_ACTIVE_LOW | GPIO_PULL_UP)>;
            b-gpios = <&gpio0 8 (GPIO_ACTIVE_LOW | GPIO_PULL_UP)>;
            steps = <80>;
            status = "okay";
        };
    
        // Right encoder
        encoder_2: encoder_2 {
            compatible = "alps,ec11";
            a-gpios = <&gpio1 2 (GPIO_ACTIVE_LOW | GPIO_PULL_UP)>;
            b-gpios = <&gpio1 1 (GPIO_ACTIVE_LOW | GPIO_PULL_UP)>;
            steps = <80>;
            status = "okay";
        };
```

## cirque trackpad support

If using the cirque trackpad, you must hand wire a single wire that connects the LED pin (P0.06 on the nice!nano) to the pad marked `DR` (data ready) on the back of the cirque trackpad
