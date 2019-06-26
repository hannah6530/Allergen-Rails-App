class User < ApplicationRecord
  has_many :recipes
  has_many :security_answers
  has_many :security_questions, through: :security_answers

  has_secure_password

  validates :user_name, uniqueness: true, presence: true

  def self.search(user_name)
    if :user_name
        where('USERNAME LIKE ?', "%#{user_name}%")
    else
        all
    end
end


  # def password=(pass)
  #   self.password_digest = BCrypt::Password.create(pass)
  # end
  #
  # def authenticate(plain_text_password)
  #   BCrypt::Password.new(self.password_digest) == plain_text_password
  # end
end
