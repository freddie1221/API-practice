require 'rails_helper'

RSpec.describe 'Users API', type: :request do
  
  describe 'POST /users' do
    # valid payload
    let(:valid_attributes) { { user: { email: 'John@gmail.com', password: 'test', password_confirmation: 'test' } } }

    context 'when the request is valid' do
      before { post '/users', params: valid_attributes }

      it 'creates a user' do
        expect(json['email']).to eq('John@gmail.com')

        # OK so the act of posting to the user is done in the context block
        # so these expectations are presumably to check the result?
        # not quite sure how this test is going to validate that a user is successfully craeted?
        # Surely if it's a full stack test it will need to test that a record has been put into the DB?
      end
      it 'returns status code 201' do
        expect(response).to have_http_status(201)
      end

    end
  end
end
