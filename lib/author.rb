require_relative "book"

class Author
  attr_reader :first_name, :last_name, :books
  attr_accessor :name
  def initialize(args)
    @first_name = args[:first_name]
    @last_name = args[:last_name]
    @name = args[:name]
    @books = []
  end

  def name
    "#{@first_name}" + " #{@last_name}"
  end

  def write(name, publication_date)
    book = Book.new(args)
  end

  def add_book(book)
    books << book
  end
end
