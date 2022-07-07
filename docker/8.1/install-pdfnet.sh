#!/bin/sh

git clone https://github.com/PDFTron/PDFNetWrappers /home/sail/PDFNetWrappers
cd /home/sail/PDFNetWrappers/PDFNetC
wget http://www.pdftron.com/downloads/PDFNetC64.tar.gz
tar xzvf PDFNetC64.tar.gz
mv PDFNetC64/Headers/ .
mv PDFNetC64/Lib/ .
rm PDFNetC64.tar.gz
cd ..
mkdir Build && cd Build

cmake -D BUILD_PDFNetPHP=ON .. # Create the Makefiles with CMake.
make # Build the PHP wrappers with SWIG.
make install # Copy the PHP wrappers to where the samples can find them.
