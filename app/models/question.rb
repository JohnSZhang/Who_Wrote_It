class Question
  attr_accessor :answered, :sentence, :book, :choices

  def self.create
    question = self.new
    question.pick_sentence
    question.get_choices
    question
  end

  def initialize
    self.answered = false
    self.choices = Hash.new
  end

  def pick_sentence
    self.sentence = Sentence.random()
    author = self.sentence.author
    self.choices[author.name] = author.id
    self.book = self.sentence.book
  end

  def get_choices
    remaining = Author.all.where.not(:id, self.sentence.author.id)
    remaining.sample(3).each do |author|
      self.choices[author.name] = author.id
    end
  end

  def is_correct?(idx)
    self.sentence.author.id == idx
  end

end
