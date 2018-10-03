require 'rails_helper'

RSpec.describe Post, type: :model do
  # ensure Post model has a m:1 relationship with the User model
  it { should belong_to(:user) }
  
  it { should validate_presence_of(:message) }
  
end
