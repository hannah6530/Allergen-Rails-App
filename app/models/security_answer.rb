class SecurityAnswer < ApplicationRecord
  belongs_to :security_question
  belongs_to :user



  # 
  # def self.verify_answers
  #   if self.answer_1 == :answer_1 && self.answer_2 == :answer_2 && self.answer_3 == :answer_3
  #
  #
  # end
end
