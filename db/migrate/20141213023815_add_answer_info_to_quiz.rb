class AddAnswerInfoToQuiz < ActiveRecord::Migration
  def change
    add_column :quizzes, :author, :string
    add_column :quizzes, :answer, :integer
    add_column :quizzes, :book, :string
  end
end
