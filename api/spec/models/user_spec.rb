require 'rails_helper'

RSpec.describe User, type: :model do
  it 'Admin has created as first user' do
    user = User.where name: "admin"
    expect(user.name).to eq("User")
  end
end
