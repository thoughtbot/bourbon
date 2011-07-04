#!/bin/sh

# README
# This will generate a sass directory and convert all .css.scss to .scss extensions.
# The sass directory is for 'sass --watch' use outside of rails.
# Step 1: Make install executable by changing permission
#     chmod a+x generate-sass.sh

# Step 2: Generate Files
#     ./generate-sass.sh

echo Creating directory...
mkdir -p $PWD/sass

echo Copying files...
cp -a $PWD/app/assets/stylesheets/* $PWD/sass

echo Renaming files...
find $PWD/sass -name "*.css.scss" | while read i;
  do mv "$i" "${i%.css.scss}.scss";
done
echo Done.

