#!/bin/bash

# Specify the domain you want to remove
DOMAIN="medium.com"

# Loop through all .html files in the directory
for file in *.html
do
    #   Use sed to replace all hyperlinks to the specified domain with empty string
    echo $file
    sed -i "s|<a href=\"http[s]*://$DOMAIN[^>]*>[^<]*</a>||g" "$file"
done

