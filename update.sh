#!/bin/sh
# Debian dir
rm *.deb
wget https://s3.amazonaws.com/rstudio-ide-build/server/jammy/amd64/rstudio-server-2022.06.0-daily-405-amd64.deb
ar -xv *.deb control.tar.xz
tar xvf control.tar.xz ./postinst ./postrm ./control
cp -fv postinst postrm debian/
rm -f xvf control.tar.xz postinst postrm
echo "Done!"
echo "Please update control and changelog file manually (source instead of binary)"
echo "Input:"
cat control
rm -f control

