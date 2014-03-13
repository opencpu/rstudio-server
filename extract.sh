#!/bin/sh
if echo $(uname -m) | grep --quiet 64; then
  filename=$(ls rstudio-server* | grep 64)
else
  filename=$(ls rstudio-server* | grep i[0-9]86)
fi
echo "Repackaging $filename"
dpkg -x $filename files
