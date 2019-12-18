class Book
  attr_reader :author_first_name, :author_last_name, :title, :publication_date
  attr_accessor :author, :publication_year
  def initialize(args)
    @author_first_name = args[:author_first_name]
    @author_last_name = args[:author_last_name]
    @title = args[:title]
    @publication_date = args[:publication_date]
    @author = args[:author]
    @publication_year = args[:publication_year]
  end

  def author
    "#{@author_first_name}" + " #{@author_last_name}"
  end

  def publication_year
    "#{@publication_date}".split.last
  end

end
