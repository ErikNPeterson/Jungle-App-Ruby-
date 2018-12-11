require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Validations' do
    it 'should have matching password fields' do
      user = User.create(firstName: "Erik", lastName: "Peterson", email: "erikeh1@gmail.com", password: "password", password_confirmation: "pass")
      expect(user.errors.full_messages).to include("Password confirmation doesn't match Password")
    end
  end 
  describe '.authenticate_with_credentials' do
    it 'returns user object is email and password are correct' do
      user1 = User.create(firstName: "Erik", lastName: "Peterson", email: "erikeh1@gmail.com", password: "password", password_confirmation: "password")
      result = User.authenticate_with_credentials("erikeh1@gmail.com", "password")
      expect(result).to eq(user1)
    end
    it 'returns nil if the email is incorrect' do
      user1 = User.create(firstName: "Erik", lastName: "Peterson", email: "erikeh1@gmail.com", password: "password", password_confirmation: "password")
      result = User.authenticate_with_credentials("erik1@gmail.com", "password")
      expect(result).to eq(nil)
    end
    it 'returns nil if the password is incorrect' do
      user1 = User.create(firstName: "Erik", lastName: "Peterson", email: "erikeh1@gmail.com", password: "password", password_confirmation: "password")
      result = User.authenticate_with_credentials("erik1@gmail.com", "passedbro")
      expect(result).to eq(nil)
    end

  end

end