require 'rails_helper'

RSpec.describe User, type: :model do
  it 'Admin has created as first user' do
    admin = User.find_by name: "admin"
    expect(admin).to be_truthy
  end

end
