# gffgroff
GNU FreeSerif font for groff and GhostScript, so you can output to any groff output device and any GhostScript output device with FreeSerif font.


I wanted to type and output in greek in my groff documents, outputing in PostScript.
After compiling the greek documents, all I got was nonsense characters,
thanks to the non-existant support for complete utf-8 by groff's default fonts.
After looking in the internet for a fix, the answers I got were not exactly what
I was looking for, as I didn't want to install anything new to my computer. Using 
the -Kutf8 parameter, I was able to replace the nonsensical characters with
the greek that I have typed, but it was looking kinda funny, because some of the
characters were in Italic, and some not, in the same word. The reason for that,
was that groff was using the Symbol font for the greek characters and it had some
undesireable glyphs. The way to overcome that was installing a font with utf8
support. So I decided on FreeSerif due to the way it looks and the high quality 
support for utf8. The way I achieved the outcome I wanted was converting the odf
files that are installed on /usr/share/fonts/ on my computer to afm and pfa through
a website on the internet, and then using afmtodit to install them for groff in the 
/usr/share/groff/current/fonts/ directory to use. The only thing that was left was 
placing the .pfa files in the appropriate Ghostscript directory.
