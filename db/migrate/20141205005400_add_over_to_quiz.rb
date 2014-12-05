class AddOverToQuiz < ActiveRecord::Migration
  def change
    add_column :quizzes, :over, :boolean
  end
end
