class CreateSecurityAnswers < ActiveRecord::Migration[5.2]
  def change
    create_table :security_answers do |t|
      t.string :answer_1
      t.string :answer_2
      t.string :answer_3
      t.integer :security_question_id
      t.integer :user_id
    end
  end
end
