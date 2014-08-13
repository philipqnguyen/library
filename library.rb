class PublicLibrary
  attr_reader :all_shelves
  attr_accessor :directory, :all_books

  def initialize
    @all_shelves = []
  end

  def count_shelves
    @all_shelves.count
  end

  def all_books
    all_books = []
    @all_shelves.each do |shelf|
      shelf.all_books.each do |book|
        all_books << book unless all_books.include? book
      end
    end
    all_books
  end
end

class Shelf
  attr_reader :genre
  attr_accessor :all_books
  def initialize(publiclibrary) # Accepts an instance of class PublicLibrary parameter
    @all_books = []
    publiclibrary.all_shelves << self
  end
end

class Book
  def initialize(title)
    @title = title.to_s
  end

  def enshelf(shelf)
    if !shelf.all_books.include? @title
      shelf.all_books << @title
    else
      return "That books is already on this shelf"
    end
  end

  def unshelf(shelf)
    if shelf.all_books.include? @title
      shelf.all_books.delete(@title)
    else
      return "That book is not on this shelf."
    end
  end
end

public_library = PublicLibrary.new

fiction = Shelf.new(public_library)

business = Shelf.new(public_library)

book1 = Book.new("LOTR")

book2 = Book.new("Game of Thrones")

book3 = Book.new("The Wallstreet MBA")

book1.enshelf(fiction)

book2.enshelf(fiction)

book3.enshelf(business)

puts "The public library has #{public_library.count_shelves} shelves and the following books: #{public_library.all_books.join(', ')}. The fiction shelf contains #{fiction.all_books.join(', ')}. The business shelf contains #{business.all_books.join(', ').}"
