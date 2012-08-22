#!/usr/bin/ruby

def edit_file(filename,string1,string2)
    file = File.open(filename, "r")
    content = file.read
    file.close

    content.gsub!(string1,string2)
    File.open(filename, "w") { |file| file << content }
end

puts '==============='
puts 'RubyRenamer v1'
puts '==============='

puts 'Enter filename to edit:'
filename = gets.chomp

puts 'Enter STRING that will be replaced:'
string1 = gets.chomp

puts 'Enter STRING to replace with:'
string2 = gets.chomp

if File.file?(filename)
    edit_file filename,string1,string2
else
	puts 'File ' + filename + ' not exists.'
end