require "./person.rb"

class Student < Person
  def initialize(name="Unknow", age, parent_permission, classroom)
    super(name, age, parent_permission)
    @classroom = classroom
  end
end