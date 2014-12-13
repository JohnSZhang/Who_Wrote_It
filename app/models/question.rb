class Question
  attr_accessor :answered, :sentence, :book, :choices

  def self.create(quiz)
    question = self.new
    question.pick_sentence
    question.get_choices(quiz.score)
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

  def get_choices(score)
    sample_count = [(score/500)+1, 4].min
    remaining = Author.all.where("id != ?", self.sentence.author.id)
    remaining.sample(sample_count).each do |author|
      self.choices[author.name] = author.id
    end
  end

  def correct_author
    self.sentence.book.title
  end

  def correct_book
    self.sentence.author.name
  end

  def correct_answer
    self.sentence.author.id
  end

end
