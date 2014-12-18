require 'rails_helper'

RSpec.describe Quiz, :type => :model do

  let(:quiz) {Quiz.new}
  subject {quiz}

  before(:each) do
    quiz = Quiz.new
  end

  describe "it should have a current question" do
    it { should respond_to(:cur_question) }
  end

  it "it should be over if we answer wrong" do
    correct_answer = quiz.answer
    quiz.check_answer(correct_answer + 1)
    expect(quiz.over?).to eq(true)
  end

  it "it should not be over and increase points if we answer correctly" do
    correct_answer = quiz.answer
    quiz.check_answer(correct_answer)
    expect(quiz.over?).to eq(false)
    expect(quiz.score).to eq(100)
  end

  it "it should should have a new question if we answered correctly" do
    correct_answer = quiz.answer
    quiz.check_answer(correct_answer)
    expect(quiz.answer).not_to eq(correct_answer)
  end
end
