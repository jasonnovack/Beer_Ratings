class Rating < ActiveRecord::Base
	validates :name, presence: true, uniqueness: true
	validates :score, presence: true, :inclusion => 1..10
	validates :when_rated, presence: true
end