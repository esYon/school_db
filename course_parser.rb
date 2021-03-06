require 'csv'

class CourseParser
  attr_reader :file

  def initialize(file)
    @file = file
  end

  def courses
    # In this method we're going to return
    # the value of the instance variable @people.
    # However, before returning the value, we might have to first
    # calculate the value and assign it to the instance variable.
    #
    # If the instance variable @people
    # has been assigned a value (that's not nil or false),
    # return the value.
    #
    # Otherwise, if @people has not been assigned a value,
    # then calculate the value and assign it.
    # The value we want to assign to @people is
    # the return value of calling parse_people_objects_from_file.

    if @courses
      return @courses
    else
      @courses = parse_course_objects_from_file
    end
  end

  private
  def parse_people_objects_from_file
    @peeps = []
    CSV.foreach(@file, :headers => true, :header_converters => :symbol) { |person|
      @peeps << Course.new(person)
    }
    @peeps
  end
end
