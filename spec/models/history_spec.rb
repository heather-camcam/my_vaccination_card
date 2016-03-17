require 'rails_helper'

RSpec.describe History, type: :model do
  
  it { should belong_to :user }

  it { should belong_to :vaccination }

  it 'returns the history\'s clinic name' do
    history = History.create(clinic_name: 'my clinic')
    expect(history.clinic_name).to eq 'my clinic'
  end

end
