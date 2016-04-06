class Student
  attr_reader :first_name, :last_name, :email, :phone, :created_at
  @@student_id = 0
  def initialize(args={})
    @first_name = args[:first_name]
    @last_name = args[:last_name]
    @email = args[:email]
    @phone = args[:phone]
    @created_at = args[:created_at]
    @@student_id += 1
  end
end
