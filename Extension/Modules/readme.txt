readme.txt

Fvwm has various modules that can be used to create custom panels, docks, task managers, desktop switchers and more.
https://www.fvwm.org/Wiki/Modules/

To install in .fvwm/local.config

## Add the below lines.
Read $[EXT_DIR]/Modules/vPager.sys
Read $[EXT_DIR]/Modules/timeDay.sys

To edit

## Copy to .fvwm/User and add below line in .fvwm/userEXT.sys
# Example
Read $[USER_DIR]/vPager.sys
