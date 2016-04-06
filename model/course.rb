class Course
  def initialize(args={})
    @course_id = args[:course_id]
    @subject = args[:subject]
    @grade_level = args[:grade_level] || 9..12
  end
end
