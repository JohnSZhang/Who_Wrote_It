class Book < ActiveRecord::Base
	has_many :chapters, dependent: :destroy
	belongs_to :author
	validates :title, presence: true, length: { minimum: 2 }
end
