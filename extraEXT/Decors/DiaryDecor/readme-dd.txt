# readme-dd.txt

This decor is based on addy-fe's Diary theme.
Original download: https://drive.google.com/file/d/1gLhWQBP7cr61az6qWwZeLNXeF6KTALm5/view
By rasat 6-Dec-2020

To install or edit .fvwm/ExtraEXT.sys

## Add the below lines below "Decorations".
Read $[EXTRA_DIR]/Styles/MyBorderStyle/myBorderStyle.sys #201
Read $[EXTRA_DIR]/Decors/DiaryDecor/diaDecor.sys #502

## Any addon or modification in .fvwm/UserEXT.sys

## Fvwm Kise

Copy .fvwm/extraEXT/Decors/DiaryDecor to .fvwm/user. Add this lines in .fvwm/userExt.sys in DECOR section.
Read $[USER_DIR]/MyBorderStyle/myBorderStyle.sys
Read $[USER_DIR]/DiaryDecor/diaDecor.sys

IMPORTANT:
Edit/untag where there is an Fvwm Kise label.
