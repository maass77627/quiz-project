class CreateQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
      t.string :answera
      t.string :answerb
      t.string :answerc
      t.string :correctanswer

      t.timestamps
    end
  end
end
