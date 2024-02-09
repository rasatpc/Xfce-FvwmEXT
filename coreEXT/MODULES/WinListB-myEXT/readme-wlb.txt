# readme-wlb.txt

Requires coreEXT/5Bindings/ExposeList

To install or edit .fvwm/CoreExt.sys

## Add the below line below "Load 7.Modules".
Read $[CORE_DIR]/MODULES/WinListB/winLB.sys

NOTE: Change geometry to adjust with controlPg.sys, vPager5.sys, and myRPanel.sys.

## Any addon or modification in .fvwm/UserEXT.sys

## Fvwm Kise

Copy .fvwm/coreEXT/MODULES/WinListB to .fvwm/user. Add this line in .fvwm/userExt.sys in MODULES section.
Read $[USER_DIR]/WinListB/winLB.sys

IMPORTANT:
Edit/untag where there is an Fvwm Kise label.
