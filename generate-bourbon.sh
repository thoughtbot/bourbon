#!/bin/sh

# README
# This will generate a bourbon directory and convert all .css.scss to .scss extensions.
# The bourbon directory is for 'sass --watch' use outside of rails.
# Step 1: Make install executable by changing permission
#     chmod a+x generate-bourbon.sh

# Step 2: Generate Files
#     ./generate-bourbon.sh

echo Creating directory...
mkdir -p $PWD/bourbon/lib

echo Copying files...
cp -a $PWD/app/assets/stylesheets/* $PWD/bourbon
cp -a $PWD/lib/* $PWD/bourbon/lib
rm -r $PWD/bourbon/lib/tasks
rm -r $PWD/bourbon/lib/bourbon/engine.rb
rm -r $PWD/bourbon/lib/bourbon/version.rb

echo Done.
