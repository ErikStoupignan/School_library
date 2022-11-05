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
        puts "#{index + 1}: #{element.title} by #{element.author}"
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

    new_student = Students.new(age, classroom, name)

    puts 'New student created successfully'
    puts "Name: #{name}, Classroom: #{Classroom}, Age: #{age}"

    @people << new_student
    replay
  end

  def create_a_book
    puts " >> Create a book\n"
    puts 'Add the title:'
    title = gets.chomp
    puts 'Add the author:'
    author = gets.chomp

    new_book = Book.new(title, author)

    puts 'New books created successfully'
    puts "Title: #{title}, author: #{author}"

    @books << new_book
    replay
  end

  def create_a_rental
    puts " >> Create a rental\n"

    select_a_book
    book_selected = gets.chomp.to_i
    puts @books[book_selected - 1].title
    book = @books[book_selected - 1]

    select_a_person
    user_selected = gets.chomp.to_i
    puts @people[user_selected - 1].name
    person = @people[user_selected - 1]

    puts "\n\n + Add the date: [MM, DD, YYYY]"
    date = gets.chomp

    new_rental = Rental.new(date, book, person)

    puts 'New rental created successfully'
    puts "Date: #{date}, Book: #{book.title} by #{person.name}"

    @rentals << new_rental
    replay
  end

  def select_a_book
    puts 'Select the book:'
    if @books.empty?
      puts "   [ List of books is empty   ]\n"
      puts '   [ Please, add a book first ]'
      replay
    else
      puts '------------------------------------'
      @books.each_with_index do |book, index|
        puts "#{index + 1} : #{book.title} by #{book.author}"
      end
      puts '------------------------------------'
      puts "\n + Selected book:\n"
    end
  end

  def select_a_person
    puts "\n\n\nSelect the user:"
    if @people.empty?
      puts "   [ List of people is empty         ]\n"
      puts '   [ Please, register a person first ]'
      replay
    else
      puts '------------------------------------'
      @people.each_with_index do |people, index|
        puts "#{index + 1} : #{people.name}"
      end
      puts '------------------------------------'
      puts "\n + Selected user:\n"
    end
  end

  def list_all_rentals
    puts " >> list_all_rentals\n"
    if @rentals.empty?
      puts "[ List of rentals is empty ]\n\n"
    else

      puts '[ id  ]|[      USER NAME      ]'

      @rentals.each_with_index do |element, index|
        puts "[  #{index + 1}  ]|    #{element.person.name}"
      end

      puts "\n\n Select the person id:"
      id = gets.chomp.to_i

      puts "The rental selected was\n"
      puts "ID: #{id} - Date: #{@rentals[id - 1].date}
        Book title: #{@rentals[id - 1].book.title}
        Author: #{@rentals[id - 1].book.author}
        User: #{@rentals[id - 1].person.name}
        Age: #{@rentals[id - 1].person.age}"
    end
    replay
  end
end
