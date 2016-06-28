#!/usr/local/bin/ruby
SOURCE = ARGV[0]
TARGET = SOURCE.gsub(/\.js$/, "-min.js")
File.open(SOURCE, "r") do |sfd|
  File.open(TARGET, "w+") do |tfd|
    sfd.each_line do |l|
      tfd.print l.chomp.strip.gsub(/\/\/.*$/, '')
    end
  end
end
