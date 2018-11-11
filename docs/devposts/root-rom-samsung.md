<!-- markdownlint-disable no-inline-html -->

# Root and Custom ROM Samsung Android Phone

`Nov 2018`

After recently having bricked my realtively new One Plus 5 phone on a recent motorbiking trip (albeit biking on the highest motorable road in the world), I decided to overhaul my 2014 Samsung Galaxy Grand 2.

Here is a summary of my experience overhauling it to get it to work rather smoothly.

## Flash TWRP recovery using Odin

- [TWRP 3.0.0 Recovery](../files/android/TWRP_3-0-0.tar)
- [Samsung Win Drivers](../files/android/Samsung-Usb-Driver-v1.5.65.0.zip)
- [Odin 3.07](http://www.downloadodin.info/download-odin-3-07)

## Install Cyanogenmod ROM+

- Boot in TWRP recovery
- [Cyanogenmod 13](https://basketbuild.com/filedl/devs?dev=Adityaupreti&dl=Adityaupreti/cm-13.0-20161022-ms013g.zip)
- [Patch 1](../files/android/Vendor_2016_flashable.zip)
- [Patch 2](../files/android/Patch_and_Front_cam_Fix.zip)
- [Bare minimum GApps, ARM-6.0-pico](https://opengapps.org)
- Install Cyanogenmod ROM +  Patches + GApps

## Root the phone

- Boot into TWRP recovery
- [SuperSU flashable](../files/android/SuperSU-v2.82-201705271822.zip)
- Install SuperSU

## Rerference Links

- https://forum.xda-developers.com/galaxy-grand-2/orig-development/rom-cyanogenmod-13-galaxy-grand-2-t3485393
- https://www.cyanogenmods.org/forums/topic/galaxy-grand-2-cm13-cyanogenmod-13-marshmallow-rom-sm-g7102/
