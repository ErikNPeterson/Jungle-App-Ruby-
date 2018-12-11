class User < ActiveRecord::Base
  has_many :reviews 

  has_secure_password

  validates :firstName, presence: true
  validates :lastName, presence: true
  validates :email, presence: true, uniqueness: { case_sensitive: false }
  validates :password, length: { minimum: 7 }, confirmation: true

  def self.authenticate_with_credentials(email, password)
      user = User.find_by_email(email.downcase.strip)
      if user && user.authenticate(password.strip)
        user
      else
        nil
      end
  end 


end