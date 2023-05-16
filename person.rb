class Person
  def initialize(name="Unknow", age, parent_permission=true)
    @id = Random.rand(1..1000)
    @name = name
  end
end