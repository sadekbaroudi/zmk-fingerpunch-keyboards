# rock on v1

Please note that the rock on v1 **only** supports the nice!nano. You cannot use vikoto or svlinky with this board, as it uses the 2 pins in the center of the nice!nano for the row 6 and row 7 gpio.

You'll see this in the `rockon_v1.overlay` file, shown below

```
            , <&gpio1 1 (GPIO_ACTIVE_HIGH | GPIO_PULL_DOWN)>      // row 6
            , <&gpio1 2 (GPIO_ACTIVE_HIGH | GPIO_PULL_DOWN)>      // row 7
```