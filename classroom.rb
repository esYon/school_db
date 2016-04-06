class Classroom
  def initialize(args={})
    :class = args[:class]
    :room_number = args[:room_number]
    :students = args.fetch(:students, [])
  end
end
