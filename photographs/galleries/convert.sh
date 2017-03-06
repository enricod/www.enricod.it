#!/bin/bash

for d in ethiopia mongolia padania; do
	cd $d
	mkdir small
	mkdir thumbs

	for f in *.jpg; do 
		echo "Processing $f file.."; 
		convert -resize 1024x1024 ./$f  small/$f
		convert -define jpeg:size=250x250 $f -thumbnail '250x250>' -background white  -gravity center -extent 250x250  thumbs/$f
	done
done

