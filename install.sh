flatpak install --from https://flathub.org/repo/appstream/io.mgba.mGBA.flatpakref
wget https://cdn2.steamgriddb.com/icon/5b46370c9fd40a27ce2b2abc281064de/32/256x256.png -O /usr/share/icons/mgba.png 
touch mgba.desktop
echo "[Desktop Entry]
Version=1.0
Icon=/usr/share/icons/mgba.png
Exec=mgba-qt %f
Terminal=false
Type=Application
Name=mGBA
GenericName=Game Boy Advance Emulator
Comment=Nintendo Game Boy Advance Emulator
Categories=Game;Emulator;
MimeType=application/x-gameboy-advance-rom;application/x-agb-rom;application/x-gba-rom;
Keywords=emulator;Nintendo;advance;gba;Game Boy Advance;" > mgba.desktop
sudo mv mgba.desktop /usr/share/applications/ 
sudo gtk-update-icon-cache -f /usr/share/icons/*
