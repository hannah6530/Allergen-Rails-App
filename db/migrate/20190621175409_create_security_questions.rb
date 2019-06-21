class CreateSecurityQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :security_questions do |t|
      t.string :question_1
      t.string :question_2
      t.string :question_3
    end
  end
end
