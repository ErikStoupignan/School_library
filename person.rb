class Person
  def initialize(age, name = 'Unknow', parent_permission: true)
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  attr_reader :id
  attr_accessor :name, :age

  def can_use_services?
    puts 'Can I use the services?'
    if of_age? || (@parent_permission == true)
      puts true
    else
      false
    end
  end

  private # All the code after this line is Private

  def of_age?
    @age >= 18
  end
end

student = Person.new(15, 'Erik')
student.can_use_services?
