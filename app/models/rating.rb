class Rating < ActiveRecord::Base
	validates :name, presence: true, uniqueness: true
	validates :score, presence: true, :inclusion => 1..10
	validates :when_rated, presence: true

	def self.search(query)
		words = query.to_s.strip.split
		words.inject(scoped) do |combined_scope, word|
			combined_scope.where("name LIKE ?", "%#{word}%")
		end
	end
end