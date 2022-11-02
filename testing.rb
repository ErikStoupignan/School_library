require_relative './trimmer_decorator'
require_relative './person'
require_relative './capitalize_decorator'

print "\n*** Testing area *****************************\n\n"
person = Person.new(22, 'maximilianus')
print "Calling the method on Person:\n#{person.correct_name}\n\n"

capitalized_person = CapitalizeDecorator.new(person)
print "Calling the method on CaputalizeDecorator:\n#{capitalized_person.correct_name}\n\n"

capitalized_trimmed_person = TrimmerDecorator.new(capitalized_person)
print "Calling the method on TrimmerDecorator:\n#{capitalized_trimmed_person.correct_name}\n\n"
