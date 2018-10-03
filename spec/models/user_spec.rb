require 'rails_helper'

RSpec.describe User, type: :model do
    # ensure User model has a 1:m relationship with the Post model
    it { should have_many(:posts).dependent(:destroy) }
    
    # then perhaps a test which tries to make a post object without something essential
    # this checks that the object is invalid
    # interested to see what the rspec syntax is for this
    it { should validate_presence_of(:email) }

    it { should validate_uniqueness_of(:email) }

    it { should validate_presence_of(:password) }

    it { should have_secure_password }

    # describe 'standard unit tests' do
    #     u = User.create(email:'2@2.com', password:'test', password_confirmation:'test') 
    #     it 'should respond to authetnicate' do
    #         expect(u.authenticate('test')).to eq u
    #     end
    # end    
end
