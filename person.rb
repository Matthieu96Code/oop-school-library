class Person
  
  attr_reader :id
  attr_accessor :name, :age 
  
  def initialize(name="Unknow", age, parent_permission=true)
    @id = Random.rand(1..1000)
    @name = name
    @parent_permission = parent_permission
  end
end