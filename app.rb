require './person'
require './student'
require './teacher'
require './classroom'
require './book'

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
      puts 'books store empty'
    end
  end

  def list_all_people
    unless @people.empty?
      @people.each do |book|
        puts "[#{person.class}] Name: #{person.name}, ID: #{person.id}, Age: #{person.age}"
      end
    else
      puts 'there is none registered'
    end
  end

  def create_person
    puts 'Do you want to create a student (1) or a teacher(2)?....'
    person_choice = gets.chomp

    if person_choice ===  '1'
      print 'Name:'
      name = gets.chomp
  
      print 'Age:'
      age = gets.chomp.to_i
  
      print 'Has Parent permission? [Y/N]:'
      parent_permission = gets.chomp.downcase
  
      student = Student.new(@classroom, age, name, parent_permission: parent_permission == 'y')
      @people << student
      puts 'Student created successfully'

    elsif person_choice ===  '2'

      print 'Name:'
      name = gets.chomp
  
      print 'Age:'
      age = gets.chomp.to_i
  
      print 'Specialization:'
      specialization = gets.chomp
  
      @people << Teacher.new(age, specialization, name)
      puts 'Teacher created successfully'

    else
      puts 'Invalid input'
    end
  end 

  def create_book
    print 'Title: '
    title = gets.chomp

    print 'Author: '
    author = gets.chomp

    @books << Book.new(title, author)
    puts 'Book created successfully'
  end

end
