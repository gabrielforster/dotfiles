#!/bin/bash

xrandr --output eDP1 -s 1920x1080 ---primary -pos 1920x0 --output HDMI1 -s 1920x1080 --pos 0x0
xrandr --output eDP1 -s 1920x1080 --pos 1920x0 --output HDMI1 --primary -s 1920x1080 --pos 0x0
