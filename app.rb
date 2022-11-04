require_relative './student'
require_relative './teacher'
require_relative './classroom'
require_relative './book'
require_relative './rental'

class App
  attr_accessor :books, :rentals, :people

  def initialize
    @books = []
    @rentals = []
    @people = []
  end

  def run
    system('cls')
    show_options
  end

  def list_all_books
    puts " >> List all books\n"
    if @books.empty?
      puts "[ List of books is empty ]\n\n"
    else
      @books.each_with_index do |element, index|
        puts "#{index + 1}: #{element}"
      end
      puts "\n"
    end
    replay
  end

  def list_all_people
    puts " >> List all people\n"
    if @people.empty?
      puts "[ List of poeple is empty ]\n\n"
    else
      @people.each_with_index do |element, index|
        puts "#{index + 1}: #{element.class} - Name: #{element.name}"
      end
      puts "\n"
    end
    replay
  end

  def create_a_teacher
    puts " >> Create a Teacher\n"
    puts 'Create a new Teacher'
    puts 'Name:'
    name = gets.chomp
    puts 'Specialization:'
    specialization = gets.chomp
    puts 'Age:'
    age = gets.chomp

    new_teacher = Teacher.new(age, specialization, name)

    puts 'New teacher created successfully'
    puts "Name: #{name}, Specialization: #{specialization}, Age: #{age}"

    @people << new_teacher
    replay
  end

  def create_a_student
    puts ' >> Create a new Student'
    puts 'Name:'
    name = gets.chomp
    puts 'classroom:'
    classroom = gets.chomp
    puts 'Age:'
    age = gets.chomp
    puts 'Parent permission [true/false]'
    parent_permission = gets.chomp

    new_student = Students.new(age, classroom, name, parent_permission)

    puts 'New student created successfully'
    puts "Name: #{name}, Classroom: #{Classroom}, Age: #{age}, Parent permission: #{parent_permission}"

    @people << new_student
    replay
  end

  def create_a_book
    puts " >> Create a book\n"
    puts "\ny   [List of books Empty]   "
    replay
  end

  def create_a_rental
    puts " >> Create a rentsl\n"
    replay
  end

  def list_all_rentals
    puts " >> list_all_rentals\n"
    replay
  end
end
