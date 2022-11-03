class Classroom
  attr_accessor :label

  def initialize(label)
    @label = label
    @students_list = []
  end

  def add_students(student)
    @students_list.push(student)
    student.classroom = self
  end
end
