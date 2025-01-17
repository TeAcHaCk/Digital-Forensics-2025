# Exercise 2

In this folder, there are some images that you'll be working with. Similar to exercise 1, calculate the MD5 and SHA-256 Hash Values and record them.

1. Open the last file in the folder, `Pic_5.jpeg` in a Hex Editor of your choice. You can use `vim`, `hexedit` or `wxhexeditor`

2. Go to line 107 (000006a0), and change the first value of `00` to `01`

3. Recalculate the hash values for `Pic_5.jpg`

## Vim

If you choose to use vim/nvim as your hexadecimal editor, then open the file with `vim Pic_5.jpeg`

There will be a blurb of unreadable data, but not to worry. We'll convert this soon.

Open the command palette by pressing `:`, then type in `%!xxd` and enter

That will convert the binary data into hexadecimal format

## Hexedit

Hexedit is a very simple Terminal based Hex editor that shows both the binary and the ascii representation next to each other.

To install Hexedit, run the command `sudo pacman -Syu hexedit`

## wxHexeditor

Those of you who do not enjoy Terminal based editors, you can choose to install `wxHexeditor` to use a GUI.

Install it by running `sudo pacman -Syu wxhexeditor`
