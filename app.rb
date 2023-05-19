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
    if @books.empty?
      puts 'books store empty'
    else
      @books.each do |book|
        puts "Title: #{book.title}, Author: #{book.author}"
      end
    end
  end

  def list_all_people
    if @people.empty?
      puts 'there is none registered'
    else
      @people.each do |book|
        puts "[#{person.class}] Name: #{person.name}, ID: #{person.id}, Age: #{person.age}"
      end
    end
  end

  def create_person
    puts 'Do you want to create a student (1) or a teacher(2)?....'
    person_choice = gets.chomp

    if person_choice == '1'
      create_student
    elsif person_choice == '2'
      create_teacher
    else
      puts 'Invalid input'
    end
  end

  def create_student
    print 'Name:'
    name = gets.chomp

    print 'Age:'
    age = gets.chomp.to_i

    print 'Has Parent permission? [Y/N]:'
    parent_permission = gets.chomp.downcase

    student = Student.new(@classroom, age, name, parent_permission: parent_permission == 'y')
    @people << student
    puts 'Student created successfully'
  end

  def create_teacher
    print 'Name:'
    name = gets.chomp

    print 'Age:'
    age = gets.chomp.to_i

    print 'Specialization:'
    specialization = gets.chomp

    @people << Teacher.new(age, specialization, name)
    puts 'Teacher created successfully'
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
