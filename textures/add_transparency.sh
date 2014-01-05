#!/bin/bash

for val in 5 10 15 20 25 30 35 40 45 50; do
  convert 'fire_grey*.png' -strip -channel Matte -evaluate Subtract "$val"% -type GrayscaleMatte fire-"$val"_%02d.png
  #convert 'fire_grey*.png' -channel A -evaluate Add "$val"% fire+"$val"_%02d.png
done
