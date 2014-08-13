# Public Library model

- There are three classes, PublicLibrary, Shelf, and Book.

- Public Library takes no arguments

- Shelf requires an argument for a public library. For example:
  `mylib = Library.new`
  `fiction = Shelf.new(mylib)`

- Books can be created via Book.new

- Books has a method be placed on shelves by `#enshelf(shelf)`

- Books has a method to be removed from a shelf by `#unshelf(shelf)`

- PublicLibrary has a `#count_shelves` method to return the count the number of shelves.

- PublicLibrary has a `#all_books` method to return an array of all book titles.
