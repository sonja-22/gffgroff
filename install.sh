#!/bin/sh


if [ -f /usr/share/groff/current/font/devps/FSER ]; then 
	find /usr/share/groff/current/font/devps/ -name "FSE*" -exec rm -rf {} \;
fi
if command -v gsx >/dev/null 2>&1 /dev/null; then
	find Font/ -name "F*" -exec cp {} /usr/share/ghostscript/*/Resource/Font/ \;
	find devps/ -name "F*" -exec cp {} /usr/share/groff/current/font/devps/ \;
else
	sudo pacman -Syu ghostscript
fi
