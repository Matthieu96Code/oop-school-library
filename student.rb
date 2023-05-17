require './person'

class Student < Person
  attr_accessor :classroom

  def initialize(age, classroom, name = 'Unknow', parent_permission: true)
    super(name, age, parent_permission)
    @classroom = classroom
    @classroom.add_student(self)
  end

  def play_hooky
    '¯\\(ツ)/¯'
  end
end
