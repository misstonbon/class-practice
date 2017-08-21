class Book
  attr_accessor :title, :author, :description, :call_number, :year_published, :copies_available, :has_checked_out, :has_book
  def initialize (title, author, description, call_number, year_published, copies_available, has_checked_out, has_book)
    @title = title
    @author = author
    @description = description
    @call_number = call_number
    @year_published = year_published
    @copies_available = copies_available #name
    @has_checked_out = has_checked_out   #names of ppl that have checked out book
    @has_book = has_book                 #names ppl that have the book on them now
  end

# def addbook(books)
#   books.each do |book|
#     @books << book
  # end

  # puts "Add title:"
  # title = gets.chomp.capitalize
  # puts "Author:"
  # author = gets.chomp.capitalize
  # puts "Describle it:"
  # description = gets.chomp.capitalize
  # puts "Call number:"
  # call_number = gets.chomp.to_i
  # puts "Year published:(YYYY)"
  # year_published = gets.chomp.to_i
  # puts "Copies Available:"
  # copies_available = gets.chomp.to_i

  def printdeets
    puts "Info about #{@title} written by #{@author} and published in #{@year_published}: #{@description}."
  end

end #ends book class

class Library
  attr_reader :title, :author, :description, :call_number, :year_published
  attr_accessor :has_checked_out, :has_book,  :copies_available

def initialize
  @books = []
end

def addbook(books)
  books.each do |book|
    @books << book
  end
end

  def newbook(library)
    puts "Add title:"
    title = gets.chomp.capitalize
    puts "Author:"
    author = gets.chomp.capitalize
    puts "Describle it:"
    description = gets.chomp.capitalize
    puts "Call number:"
    call_number = gets.chomp.to_i
    puts "Year published:(YYYY)"
    year_published = gets.chomp.to_i
    puts "Copies Available:"
    copies_available = gets.chomp.to_i
library.addbook(
Book.new(title, author, description, call_number, year_published, copies_available)
)
return library
end

end #ends Library class

prince_of_tides = Book.new("Prince of Tides",
"Pat Conroy" ,
"A coming of age story in a disfunctional American family in the SC low country.",
1234, 1987, 10)

prince_of_tides.printdeets
