class CreateQuizzes < ActiveRecord::Migration
  def change
    create_table :quizzes do |t|
      t.integer :score
      t.string :name
      t.timestamps
    end
  end
end
