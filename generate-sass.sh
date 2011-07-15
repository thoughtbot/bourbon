#!/bin/sh

# README
# This will generate a bourbon directory and convert all .css.scss to .scss extensions.
# The bourbon directory is for 'sass --watch' use outside of rails.
# Step 1: Make install executable by changing permission
#     chmod a+x generate-sass.sh

# Step 2: Generate Files
#     ./generate-sass.sh

echo Creating directory...
mkdir -p $PWD/bourbon

echo Copying files...
cp -a $PWD/app/assets/stylesheets/* $PWD/bourbon

echo Renaming files...
find $PWD/bourbon -name "*.css.scss" | while read i;
  do mv "$i" "${i%.css.scss}.scss";
done
echo Done.

