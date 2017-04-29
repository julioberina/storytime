require "gosu"
require_relative "book"

# "Open the book"

book = Book.new("Storytime", 800, 600, true)
book.open
