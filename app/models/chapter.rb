class Chapter < ActiveRecord::Base
	belongs_to :book
	validates :book_id, presence: true
	validates :content, presence: true, length: { minimum: 100}
end
