require_relative 'person'

class Student
  attr_reader :first_name, :last_name, :email, :phone, :created_at
  @@student_id = 0
  def initialize(args={})
    @@student_id += 1
  end
end
