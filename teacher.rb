require './person'

class Teacher < Person
  def initialize(age, specialization, name = 'Unknow', parent_permission: true)
    super(name, age, parent_permission)
    @specialization = specialization
  end
end
