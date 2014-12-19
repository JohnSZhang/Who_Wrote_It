class Score < ActiveRecord::Base
  validates :name, presence: true
  validates :points, presence: true, numericality: { greater_than: 0}

  def self.is_high(quiz)
    lowest = Score.all.order("points DESC").limit(100).last.point
    quiz.points > lowest
  end
end
