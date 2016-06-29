#!/usr/local/bin/ruby
#Strips // comments from lines
#Strips leading and trailing space on lines
#Outputs any line still containing text.
SOURCE = ARGV[0]
TARGET = SOURCE.gsub(/\.js$/, "-min.js")
File.open(SOURCE, "r") do |sfd|
  File.open(TARGET, "w+") do |tfd|
    sfd.each_line do |l|
      new_line = l.strip.gsub(/\/\/.*$/, '')
      tfd.puts new_line if new_line != ''
    end
  end
end
