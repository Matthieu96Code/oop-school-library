class App
  def initialize
    @books = []
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
end
