require_relative './person'

class Students < Person
  attr_accessor :classroom

  def initialize(age, classroom, name = 'Unknown', parent_permission = true)
    super(age, name, parent_permission: parent_permission)
    @classroom = classroom
  end

  def play_hooky
    puts '"¯\(ツ)/¯"'
  end

  def classrooms(classes)
    @classroom = classes
    classes.students_list.push(self) unless classes.students_list.include?(self)
  end
end
