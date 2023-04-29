#!/bin/sh
rm Packages
./scripts/dpkg-scanpackages.sh package /dev/null > Packages
rm Packages.gz
rm Packages.bz2
gzip -c9 Packages > Packages.gz
bzip2 -c9 Packages > Packages.bz2
