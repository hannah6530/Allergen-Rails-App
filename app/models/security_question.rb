class SecurityQuestion < ApplicationRecord
  has_many :security_answers
  has_many :users, through: :security_answers
end
