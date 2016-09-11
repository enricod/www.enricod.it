#!/bin/bash

mkdir 800
mkdir 250

for f in *.jpg; do 
	echo "Processing $f file.."; 
	convert -resize 800 ./$f  800/$f
	convert -define jpeg:size=250x250 $f -thumbnail '250x250>' -background white  -gravity center -extent 250x250  250/$f

done


