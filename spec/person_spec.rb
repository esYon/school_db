require_relative '../person'

pending Person do
  let(:john) {Person.new("John", "Thompson", "john@thompson.com", "555-555-5555", time)}

  it 'has first name' do
   expect(john.first_name).to eq("John")
  end

  it 'has last name' do
   expect(john.last_name).to eq("Thompson")
  end

  it 'has email' do
   expect(john.email).to eq("john@thompson.com")
  end

  it 'has phone number' do
   expect(john.phone).to eq("555-555-5555")
  end

  it 'has time' do
   expect(john.created_at).to eq(time)
  end
end
