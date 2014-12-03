class Book < ActiveRecord::Base
	belongs_to :author
	validates :title, presence: true, length: { minimum: 2 }
	validates :content, presence: true
end
