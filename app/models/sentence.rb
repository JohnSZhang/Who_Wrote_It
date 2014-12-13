class Sentence
  attr_accessor :author, :book, :content

  def self.random
    book = Book.all.sample
    sentence = Sentence.new
    sentence.book, sentence.author = book, book.author
    sentence.content = Sentence.pick_sentence(book.content)
    sentence
  end

  def self.pick_sentence(text)
    sentences = text.split(/(?<=[?.!])/)
    sentences.map!(&:strip).select!{|s| s.length >= 150}.sort_by{|a| a.length }
    len = sentences.length
    sentences[len/3..len*2/3].sample.gsub(/\n|\r\n/, " ")
  end

end
