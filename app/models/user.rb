class User < ApplicationRecord
  has_many :recipes

  has_secure_password

  # def password=(pass)
  #   self.password_digest = BCrypt::Password.create(pass)
  # end
  #
  # def authenticate(plain_text_password)
  #   BCrypt::Password.new(self.password_digest) == plain_text_password
  # end
end
