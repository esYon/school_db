require_relative 'person'

class Professor < Person
  attr_reader :first_name, :last_name, :email, :phone, :created_at
  @@professor_id = 0
  def initialize(args={})
    super
    @@professor_id += 1
  end

end
