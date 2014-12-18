class Quiz < ActiveRecord::Base
  attr_accessor :cur_question
  after_initialize :set_up

  def set_up
    self.over = false
    self.score || self.score = 0
    self.new_question
  end

  def new_question
    self.cur_question = Question.create(self)
    self.author = cur_question.correct_book
    self.book = cur_question.correct_author
    self.answer = cur_question.correct_answer
    self.save
  end

  def check_answer(idx)
    if idx.to_i == self.answer
      self.score += 100
      self.new_question
    else
      self.over = true
    end
    self.save
  end

  def over?
    self.over
  end
end
