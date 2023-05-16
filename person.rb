class Person

  attr_reader :id
  attr_accessor :name, :age 
  
  def initialize(name="Unknow", age, parent_permission=true)
    @id = Random.rand(1..1000)
    @name = name
    @parent_permission = parent_permission
  end

  def of_age?
    if @age >= 18
      true
    else
      false
    end
  end

  private :of_age?

end