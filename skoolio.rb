=begin

Design Classes with a Single Responsibility CH 2 POODR;

1/31/16 - Look into getters and setters and making them communicate between seperate classes

=end


class Student
  @@student_ID = 0
  attr_writer :last_name, :first_name, :grade, :phone_number, :address, :city, :state, :zip
  def initialize (last_name, first_name)
    @last_name = last_name
    @first_name = first_name
    @@student_ID += 1
  end
  def contact_info(phone_number, address, city, state, zip)
    @phone_number = phone_number
    @address = address
    @city = city
    @state = state
    @zip = zip
  end
end
class Student_Directory
  @@students = Hash.new(0)
  @@student_ID = 0
  attr_accessor :name, :student_ID, :grade #figure out if I need them is accessors, or can they be organized into setters and getters?
  #I want the ability for ppl to add students and view them, but not modify content--perhaps getters
  attr_reader :last_name, :first_name, :student_ID
  def initialize(name, student_ID, course, grade)
    @name = name
    @student_ID = student_ID
    @course = course
    @grade = grade
  end
  def add_student(last_name, first_name, student_ID)
    @@students.merge!(name: @name, student_ID: @student_ID, course: @course, grade: @grade)
  end
  def letter_grade(grade)
	  case grade
	    when grade >= 90 && grade <= 100
		    puts "A! Fantastic job!"
	    when grade >= 80 && grade <= 89
		    puts "B. Keep it up!"
      when grade >= 70 && grade <= 79
		    puts "C. Try harder."
      when grade >= 60 && grade <= 69
		    puts "D. You need to study more."
      when grade >= 0 && grade <= 59
        puts "F. No bueno."
      else
        puts "Invalid value"
	  end
    puts grade.class #Recognizes arg as Fixnum, yet still defaults to rescue branch
  end
end
