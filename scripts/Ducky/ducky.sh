#!/bin/bash


java -jar ~/USB-Rubber-Ducky/Encoder/encoder.jar -l ~/USB-Rubber-Ducky/Encoder/resources/sv.properties  -i $1 -o inject.bin

rm /Volumes/DUCKY/inject.bin
mv inject.bin /Volumes/DUCKY/inject.bin

echo "Duckyencoding = DONE!" 
