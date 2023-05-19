class App
  def initialize
    @books = []
    @people = []
  end

  def list_all_books
    unless @books.empty?
      @books.each do |book|
        puts "Title: #{book.title}, Author: #{book.author}"
      end
    else
      puts books store empty
    end
  end

  def list_all_people
    unless @people.empty?
      @people.each do |book|
        puts "[#{person.class}] Name: #{person.name}, ID: #{person.id}, Age: #{person.age}"
      end
    else
      puts there is none registered
    end
  end
end
