require 'rails_helper'

RSpec.describe User, type: :model do
  it { should have_many :histories}

  it { should have_many :vaccinations }

  it 'returns the first name' do
    user = User.create(first_name: 'Josh', last_name: 'Steiner')
    expect(user.first_name).to eq 'Josh'
  end

  it "is invalid without an email" do
    user = User.new(email: nil)
    user.valid?
    expect(user.errors[:email]).to include("can't be blank")
  end


  it "is invalid with a duplicate email address" do
    User.create(
       first_name: 'Joe', last_name: 'Tester',
       password: 'asdasdasd', password_confirmation: 'asdasdasd',
       email: 'tester@example.com'
     )
     user = User.new(
        first_name: 'Joe', last_name: 'Tester',
        password: 'asdasdasd', password_confirmation: 'asdasdasd',
        email: 'tester@example.com'
      )
    user.valid?
    expect(user.errors[:email]).to include ('has already been taken')
  end
  
end
