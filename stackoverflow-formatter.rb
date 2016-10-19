#!/usr/bin/ruby

=begin
	stackoverflow-formatter
	@author Charles Bailey

	A simple Ruby script for formatting a code file.
	I've noticed a problem: when a user wants to submit to
	Stack Overflow, he/she often must first tediously format
	code snippets. Well no longer! This program converts tabs
	to four spaces and then comments line numbers! Currently,
	it supports only the C family.
=end

unless ARGV.length == 1
	puts "[!] Usage: ./in-file-comment <path to code file>"
	exit(1)
end

begin
	file = File.readlines(ARGV[0]).map{|line| line}
rescue
	puts "[!] Could not read from #{ARGV[0]}."
	exit(2)
end

line_number_length = Math.log(file.length, 10).ceil

file.each_with_index do |line, idx|
	print "/* #{format("%#{line_number_length}i", idx+1)} */  "
	puts line.gsub("\t", "    ")
end
