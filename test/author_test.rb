# ## Iteration 2
#
# Use TDD to create an `Author` class that responds to the following interaction pattern.
#
# The `write` method must take two Strings as arguments and return an instance of `Book`.
#
# ```ruby
# pry(main)> require './lib/author'
# #=> true
#
# pry(main)> charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
# #=> #<Author:0x00007fb898081850...>
#
# pry(main)> charlotte_bronte.name
# #=> "Charlotte Bronte"
#
# pry(main)> charlotte_bronte.books
# #=> []
#
# pry(main)> jane_eyre = charlotte_bronte.write("Jane Eyre", "October 16, 1847")
# #=> #<Book:0x00007fb896e22538...>
#
# pry(main)> jane_eyre.class
# #=> Book
#
# pry(main)> jane_eyre.title
# #=> "Jane Eyre"
#
# pry(main)> charlotte_bronte.write("Villette", "1853")
# #=> #<Book:0x00007fb8980aaca0...>
#
# pry(main)> charlotte_bronte.books
# #=> [#<Book:0x00007fb896e22538...>, #<Book:0x00007fb8980aaca0...>]
# ```

require 'minitest/autorun'
require 'minitest/pride'
require './lib/book'
require './lib/author'


class AuthorTest < Minitest::Test
  def test_author_exists
    charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
    assert_instance_of Author, charlotte_bronte
  end

  def test_author_has_attributes
    charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
    assert_equal "Charlotte Bronte", charlotte_bronte.name
  end

  def test_author_starts_off_with_no_books
    charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
    assert_equal [], charlotte_bronte.books
  end

  def test_author_can_write_book
    charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
    jane_eyre = charlotte_bronte.write("Jane Eyre", "October 16, 1847")
    assert_equal Book, jane_eyre.class
    assert_equal "Jane Eyre", jane_eyre.title
  end

  def test_can_add_written_book_into_books_array
    charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
    jane_eyre = charlotte_bronte.write("Jane Eyre", "October 16, 1847")
    villette = charlotte_bronte.write("Villette", "1853")
    charlotte_bronte.add_book(jane_eyre)
    charlotte_bronte.add_book(villete)
    assert_equal [jane_eyre, villete], charlotte_bronte.books
  end
end
