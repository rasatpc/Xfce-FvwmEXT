readme.txt (How-to-do)

This optional extension adds additional Fvwm features. It requires moving the Xfce panel to the left side, vertically.

## Fvwm features:

1) FVWM Menu Button:
* FVWM label opens an action menu to Restart, Window identity, FvwmPrompt for fvwm commands, and Fvwm wallpapers.

2) Note Menu Button:
* Zenity dialog box for capturing text input for quick notes. It stores notes in ~/Desktop/notes.txt.

3) Taskbar Module Actions:
* Left-click for Window Activation.
* Ctrl+Left-click for Window Minimization (Thumbnail).

* Middle-click for Primary Selection Pipe-to-Clipboard & Paste Automation (Auto-Paste Macro).
- Example: Open a web browser on Desk1. Open an Office document on Desk2 and point to a text field. In the browser, highlight text. Middle-click the document window's taskbar button. This activates the document with the auto-pasted text.

* Right-click for window options (Maximize, Iconify, Close, and Move to a selected Desk).

####
To install FvwmPanel in .fvwm/userEXT.sys
####

Add the line below:
Read $[EXT_DIR]/Modules/FluxPanel/fluxbox-panel.sys

For editing and modification, copy it to .fvwm/User and add the line in .fvwm/userEXT.sys
Read $[USER_DIR]/FluxPanel/fluxbox-panel.sys
