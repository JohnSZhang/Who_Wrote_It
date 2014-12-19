class Score < ActiveRecord::Base
  validates :name, presence: true
  validates :points, presence: true, numericality: { greater_than: 0}
end
