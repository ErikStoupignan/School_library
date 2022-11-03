require './trimmer_decorator'
require './person'
require './capitalize_decorator'

print "\n*** Testing area *****************************\n\n"

person = Person.new(22, 'maximilianus')
puts "Calling the method on Person:\n> #{person.correct_name}\n\n"

capitalized_person = CapitalizeDecorator.new(person)
puts "Calling the method on CapitalizeDecorator:\n> #{capitalized_person.correct_name}\n\n"

capitalized_trimmed_person = TrimmerDecorator.new(capitalized_person)
puts "Calling the method on TrimmerDecorator:\n> #{capitalized_trimmed_person.correct_name}\n\n"

print "**********************************************\n\n"
