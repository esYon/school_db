require_relative 'student'
require_relative 'professor'
require_relative 'person_parser'

if ARGV.any?

p "Students or Professors?"

  if ARGV[0] = 'students'
    student_parser = PersonParser.new('students.csv')
    students = student_parser.people
    students.each { |student| p "#{student.first_name} #{student.last_name} #{student.email} #{student.phone} #{student.created_at} " }
  elsif ARGV[0] = 'professors'
    professor_parser = PersonParser.new('professors.csv')
    professors = professor_parser.people
    professors.each { |professor| p "#{professor.first_name} #{professor.last_name} #{professor.email} #{professor.phone} #{professor.created_at} " }
  else
    "Please enter valid input"
  end
end
