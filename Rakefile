# encoding: utf-8
require 'rubygems'
require 'bundler'
require './lib/bourbon/docset.rb'

task :default => :docset

task :docset do
  `jekyll build`
  puts "Generating docset directories..."
  generate_docset_dirs
  puts "Copying docset assets..."
  copy_plist_file
  copy_docset_markup
  puts "Generating docset database..."
  generate_database
  puts "Generating feed..."
  generate_feed
  puts "Archiving package..."
  archive_package
  puts "Cleaning up..."
  delete_package_file
end
