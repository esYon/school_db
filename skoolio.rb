=begin

Design Classes with a Single Responsibility CH 2 POODR;

1/31/16 - Look into getters and setters and making them communicate between seperate classes

=end

class School
  attr_accessor :departments, :professors, :governing_board, :student_body
  def initialize()
    #add course descriptions
    @departments = {
      electives: { foreign_languages: { course1: "Spanish I", grade: 9..12,
                                        course2: "Mandarin I", grade: 9..12,
                                        course3: "Sign Language I", grade: 9..12,
                                        course4: "Spanish II", grade: 9..12,
                                        course5: "Mandarin II", grade: 9..12,
                                        course6: "Sign Language II", grade: 9..12
                   },
                   performing_arts: { course1: "Theatre", grade: 9..12,
                                      course2: "Choir", grade: 9..12,
                                      course3: "Dance", grade: 9..12,
                                      course4: "Band", grade: 9..12
                   },
                   sports: { course1: "JV Baseball", grade: 9..10,
                             course2: "V Baseball", grade: 10..12,
                             course3: "JV Basketball", grade: 9..10,
                             course4: "V Basketball", grade: 10..12,
                             course5: "JV Football", grade: 9..10,
                             course6: "V Football", grade: 10..12,
                             course7: "JV Soccer", grade: 9..10,
                             course8: "V Soccer", grade: 10..12,
                             course9: "JV Swimming", grade: 9..10,
                             course10: "V Swimming", grade: 10..12,
                             course11: "JV Track & Field", grade: 9..10
                             course12: "V Track & Field", grade: 10..12,
                   },
                   misc: { course1: "Philosophy", grade: 9..12,
                           course2: "Time Management", grade: 9..12,
                           course3: "Health", grade: 9..12,
                           course4: "Logic", grade: 9..12
                   }
      }
      language_arts: { course1: "English I", grade: 9,
                       course2: "English II", grade: 10,
                       course3: "Argumentation & Debate", grade: 11,
                       course4: "Communications", grade: 12
      },
      mathematics: { course1: "Pre-Algebra", grade: 9,
                     course2: "Algebra", grade: 9,
                     course3: "Geometry/Trig", grade: 10,
                     course4: "Statistics", grade: 11,
                     course5: "Precalculus", grade:12,
                     course6: "Calculus", grade:12
      },
      life_science: {  course1: "Biology", grade: 9,
                       course2: "Biology Lab", grade: 10,
      },
      physical_science: { course1: "Chemistry", grade: 10,
                          course2: "Chemistry Lab", grade: 10
      },
      computing_and_engineering: { course1: "Typing", grade: 9..12,
                                   course2: "Computer Applications & Software", grade: 9..12,
                                   course3: "Programming I: Python", grade: 9..12,
                                   course4: "Programming II: Python", grade: 10..12,
                                   course5: "Engineering I", grade: 9..12,
                                   course6: "Engineering II: Design and Analysis", grade: 10..12
      }


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
