class Question
  attr_accessor :answered

  def initialize
    self.answered = false

  end

  def get_choices
    
  end

  def check_answer
    self.answered = true

  end

end
