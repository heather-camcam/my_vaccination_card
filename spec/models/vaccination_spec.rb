require 'rails_helper'

Rspec.describe Vaccination, type: :model do
  it { should have_and_belong_to_many :vaccinations}
end
