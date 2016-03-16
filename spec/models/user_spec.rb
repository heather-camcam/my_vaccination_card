require 'rails_helper'

RSpec.describe User, type: :model do
  it { should have_many :histories}

  it { should have_many :vaccinations } 
end
