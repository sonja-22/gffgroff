#!/bin/sh


if command -v gsx >/dev/null 2>&1 /dev/null; then
	find Font/ -name "F*" -exec cp {} /usr/share/ghostscript/*/Resource/Font/ \;
	find devps/ -name "F*" -exec cp {} /usr/share/groff/current/font/devps/ \;
else
	sudo pacman -Syu ghostscript
fi
