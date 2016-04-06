=begin

http://codereview.stackexchange.com/questions/10312/communication-between-two-classes-in-ruby

http://phrogz.net/programmingruby/tut_classes.html

Design Classes with a Single Responsibility CH 2 POODR;

1/31/16 - Look into getters and setters and making them communicate between seperate classes

=end

class School
  attr_accessor :departments, :professors, :governing_board, :student_body
  def initialize()
    #add course descriptions
    @departments = {
      electives: {
        foreign_languages: {},
        performing_arts: {},
        sports: {},
        misc: {},
        language_arts: {},
        mathematics: {},
        life_science: {},
        physical_science: {},
        computing_and_engineering: {}
      @professors = {}
class Professor
end

class Admin_Dashboard end

class Student
  @@student_ID = 0                    #make grade an enum
  attr_reader :last_name, :first_name, :grade, :phone_number, :address, :city, :state, :zip
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
  attr_accessor :letter_grade #figure out if I need them is accessors, or can they be organized into setters and getters?
  #I want the ability for ppl to add students and view them, but not modify content--perhaps getters
  attr_reader :student_ID
  def initialize(student_ID, course, grade)
    @student_ID = student_ID
    @course = course
    @letter_grade = letter_grade
  end
  def add_student(last_name, first_name, student_ID)
    @@students.merge!(name: @name, student_ID: @student_ID, course: @course, grade: @grade)
  end
end
