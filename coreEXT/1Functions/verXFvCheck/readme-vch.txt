This function checks for Fvwm2 compatibility.

At startup, the script checks if Fvwm2 or Fvwm3 and replaces /.fvwm/setup/autostart/XfceFvwm2-3.desktop with /files-org/XfceFvwm2.desktop or XfceFvwm3.desktop.

Add the below line below where required to make the check.
Read $[CORE_DIR]/1Functions/verXFvCheck/verXFCh.sys
