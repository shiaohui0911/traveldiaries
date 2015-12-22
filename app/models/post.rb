class Post < ActiveRecord::Base
	validates :title, presence: true, length: { maximum: 30 }
	validates :content, :category, presence: true
	has_many :comments
	belongs_to :user
end

