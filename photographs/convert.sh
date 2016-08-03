#!/bin/bash

for f in *.jpg; do 
	echo "Processing $f file.."; 
	convert -resize 1280 ./$f  small/$f
done
