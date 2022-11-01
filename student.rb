require_relative './person'

class Students < Person
  def initialize(age, classroom, name = 'Unknown', parent_permission: true)
    super(age, name, parent_permission: parent_permission)
    @classroom = classroom
  end

  def play_hooky
    puts '"¯\(ツ)/¯"'
  end
end

student = Students.new(26, 'Firts', 'Erik', true)
p student
student.play_hooky
