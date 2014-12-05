class Question
  attr_accessor :answered, :sentence, :book

  def initialize
    self.answered = false
    self.authors = []
    self.authors = Hash.new
  end

  def pick_sentence
    self.sentence = Sentence.random()
    author = self.sentence.author
    self.authors[author.name] = author.id
    self.book = self.sentence.book
  end

  def get_choices
    remaining = Author.all.where.not(:id, self.sentence.author.id)
    remaining.sample(3).each do |author|
      self.authors[author.name] = author.id
    end
  end

  def check_answer(idx)
    self.answered = true

  end

end
