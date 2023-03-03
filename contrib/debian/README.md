
Debian
====================
This directory contains files used to package evetd/evet-qt
for Debian-based Linux systems. If you compile evetd/evet-qt yourself, there are some useful files here.

## evet: URI support ##


evet-qt.desktop  (Gnome / Open Desktop)
To install:

	sudo desktop-file-install evet-qt.desktop
	sudo update-desktop-database

If you build yourself, you will either need to modify the paths in
the .desktop file or copy or symlink your evet-qt binary to `/usr/bin`
and the `../../share/pixmaps/pivx128.png` to `/usr/share/pixmaps`

evet-qt.protocol (KDE)

