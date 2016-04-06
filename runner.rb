require_relative 'student'
require_relative 'professor'
require_relative 'person_parser'

if ARGV.any?

p "Students or Professors?"

if ARGV[0] = 'students'
  student_parser = PersonParser.new('students.csv')
  students = student_parser.people
elsif ARGV[0] = 'professors'
  professor_parser = PersonParser.new('professors.csv')
  professors = professor_parser.people
else
  "Please enter valid input"
end

students.each { |student| p "#{student.first_name} #{student.last_name}" }
