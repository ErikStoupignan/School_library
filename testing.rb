require './trimmer_decorator'
require './person'
require './capitalize_decorator'
require './rental'
require './book'
require './classroom'

print "\n*** Testing area *****************************\n\n"
print "-> TrimerDecorator & CapitalizeDecorator <-\n\n"

person = Person.new(22, 'maximilianus')
puts "Calling the method on Person:\n> #{person.correct_name}\n\n"

capitalized_person = CapitalizeDecorator.new(person)
puts "Calling the method on CapitalizeDecorator:\n> #{capitalized_person.correct_name}\n\n"

capitalized_trimmed_person = TrimmerDecorator.new(capitalized_person)
puts "Calling the method on TrimmerDecorator:\n> #{capitalized_trimmed_person.correct_name}\n\n"

print "**********************************************\n\n"

print "-> Setup Associations <-\n\n"
person_one = Person.new(49, 'Federico')
person_two = Person.new(28, 'Luis')
person_three = Person.new(27, 'Lorena')

add_book_one = Book.new('La Biblia', 'God')
add_book_two = Book.new('Sherlock', 'Holmes')
add_book_three = Book.new('Sherlock', 'Holmes')

rental_one = Rental.new('2022-07-25', add_book_one, person_one)
rental_two = Rental.new('2022-12-09', add_book_two, person_two)
rental_three = Rental.new('2022-09-13', add_book_three, person_three)

puts(rental_one.person.rentals.map do |rentals|
  "Rental 1\nPerson: #{rentals.person.name} | Rented book: #{rentals.book.title} by #{rentals.book.author}" \
    " | Date: #{rentals.date}"
end)

puts "\n"

puts(rental_two.book.rentals.map do |rentals|
  "Rental 2\nPerson: #{rentals.person.name} | Rented book: #{rentals.book.title} by #{rentals.book.author}" \
    " | Date: #{rentals.date}"
end)

puts "\n"

puts(rental_three.book.rentals.map do |rentals|
  "Rental 3\nPerson: #{rentals.person.name} | Rented book: #{rentals.book.title} by #{rentals.book.author}" \
    " | Date: #{rentals.date}"
end)

puts "\n\n"
