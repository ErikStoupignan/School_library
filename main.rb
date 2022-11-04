require './app'

def show_options
  puts ' +++++++++++++++++ O.O +++++++++++++++++++ '
  puts "\nWelcome to my School Library App!\n\n"
  puts 'Please choose an option by enterin a number:'
  puts '1 - List all books'
  puts '2 - List all people'
  puts '3 - Create a person'
  puts '4 - Create a book'
  puts '5 - Create a rental'
  puts '6 - List all rentals for a given person id'
  puts "7 - Exit\n\n"
  puts 'Option Selected: '

  user_selected_option
end

def main
  app = App.new
  app.run
end

def replay
  puts "\n\nShow options again? [y/n]"
  again = gets.chomp.capitalize
  sleep(1)
  system('cls')
  case again
  when 'Y'
    show_options
  when 'N'
    good_bye
  else
    puts '>> Select a valid option please <<'
    replay
  end
end

def user_selected_option
  selected = gets.chomp.to_i
  puts ' '
  if selected >= 1 && selected <= 6
    switch(selected)
  elsif selected == 7
    good_bye
  else
    puts " >> Please, select a correct option <<\n\n"
    replay
  end
end

def switch(user_selection)
  case user_selection
  when 1
    list_all_books
  when 2
    list_all_people
  when 3
    create_a_person
  when 4
    create_a_book
  when 5
    create_a_rental
  when 6
    list_all_rentals
  end
end

def create_a_person
  puts ' >> Create a person'
  puts ' >> Is the person a [S] student or [T] teacher? [S/T]'
  person = gets.chomp.capitalize
  case person
  when 'S'
    create_a_student
  when 'T'
    create_a_teacher
  else
    puts 'Select a valid option please'
    create_a_person
  end
end

def good_bye
  system('cls')
  puts " \nThanks for using our program!"
  puts '          ╔╦═╦════╦╦═══════════╗'
  puts '          ║║░╩╦═╦═╣╠╗╔══╦═╦═╦═╗║'
  puts '          ║║░░╠╝║╠╣╗║╠╗╚╣║║║║║║║'
  puts '          ║╚══╩═╩═╩╩╝╚══╩═╩═╩╩╝║'
  puts '          ╚════════════════════╝'
  puts "\n\n\n"
  exit
end

main
