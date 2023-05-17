require './nameable'

class Person < Nameable
  attr_reader :id
  attr_accessor :name, :age, :rentals

  def initialize(age, name = 'Unknown', parent_permission: true)
    super()
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
    @rentals = []
  end

  def of_age?
    @age >= 18
  end

  private :of_age?

  def can_use_service?
    of_age? || @parent_permission
  end

  public :can_use_service?

  def add_rental(book, date)
    Rental.new(date, book, self)
  end

  def correct_name
    @name
  end
end
