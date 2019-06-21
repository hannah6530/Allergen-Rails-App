class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :user_name
      t.string :password_digest
      t.string :name
      t.integer :security_question_id
      t.integer :security_answer_id
    end
  end
end
