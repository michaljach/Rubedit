#!/usr/bin/ruby

def edit_file(filename,string1,string2)
    file = File.open(filename, "r")
    content = file.read
    file.close

    content.gsub!(string1,string2)
    File.open(filename, "w") { |file| file << content }
end

puts "============================="
puts "Rubedit v1"
puts "github.com/michaljach/Rubedit"
puts "============================="

puts "Select option:"
puts "1 -- Edit one file with given name"
puts "2 -- Edit multiple files with given names"
puts "3 -- Edit all files in given directory"

a = gets

case Integer(a)
when 1
	puts "Enter filename to edit:"
	filename = gets.chomp

	if File.file?(filename)
		puts "Enter STRING that will be replaced:"
		string1 = gets.chomp
		
		puts "Enter STRING to replace with:"
		string2 = gets.chomp
	
	    edit_file filename,string1,string2
	else
		puts "File #{filename} not exists."
	end
when 2
	puts '2'
when 3
	puts '3'
else
	puts "Wrong menu number!"
end