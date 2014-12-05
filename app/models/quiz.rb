class Quiz < ActiveRecord::Base
  attr_accessor :cur_question
  after_initialize :set_up

  def set_up
    self.over = false
    self.score = 0
    self.cur_question = Question.create
  end

  def check_answer(idx)
    if self.cur_question.is_correct?(idx)
      self.score += 100
      self.cur_question = Question.create
    else
      self.over = true
    end
  end
end
