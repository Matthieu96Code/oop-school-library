class App
  def initialize
    @books = []
  end

  def list_all_books
    if @books.empty?
      puts books empty
      return
    end
    @books.each do |book|
      puts "Title: #{book.title}, Author: #{book.author}"
    end
  end
end
