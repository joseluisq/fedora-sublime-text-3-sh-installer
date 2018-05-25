#!/bin/sh

# Sublime Text 3 Installer
# for Fedora Linux x64 (64 Bit)

# Miscellaneous
B=`tput bold`
N=`tput sgr0`

# Sublime Text 3 (v3.1.1)
# Build: 3176
# Date: 14 May 2018
BUILD="3176"

SOURCE="https://download.sublimetext.com/sublime_text_3_build_${BUILD}_x64.tar.bz2"
SHORTCUT="[Desktop Entry]
Version=1.0
Type=Application
Name=Sublime Text 3
GenericName=Text Editor
Comment=Sophisticated text editor for code, markup and prose
Exec=/opt/sublime_text_3/sublime_text %F
Terminal=false
MimeType=text/plain;
Icon=/opt/sublime_text_3/Icon/128x128/sublime-text.png
Categories=TextEditor;Development;
StartupNotify=true
Actions=Window;Document;

[Desktop Action Window]
Name=New Window
Exec=/opt/sublime_text_3/sublime_text -n
OnlyShowIn=Unity;

[Desktop Action Document]
Name=New File
Exec=/opt/sublime_text/sublime_text --command new_file
OnlyShowIn=Unity;"

# Installation
echo "${B}Sublime Text 3 Installer (build ${BUILD})${N}"
echo "${B}-------------------------------------${N}"
echo "Initializing the installation..."
echo "Downloading package..."
curl -L "${SOURCE}" -o "/opt/sublime_text_3.tar.bz2"
echo "Extracting packages..."
cd /opt
tar -xvjf "sublime_text_3.tar.bz2"
echo "Installing..."
rm -rf "sublime_text_3.tar.bz2"
echo "${SHORTCUT}" > "/usr/share/applications/sublime-text-3.desktop"
ln -s /opt/sublime_text_3/sublime_text /usr/bin/subl
subl -v
echo "Done !"
echo "${B}Sublime Text 3${N} has been installed successfully !"
