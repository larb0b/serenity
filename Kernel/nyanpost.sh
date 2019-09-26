#!/bin/bash
set -e
cd /serenity/Toolchain
. ./UseIt.sh
cd ../Kernel
./makeall.sh
cd ../Ports/nyancat
./package.sh
cd ../../Kernel
./sync.sh
./run
