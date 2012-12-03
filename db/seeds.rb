# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

oo = Excelx.new("RatingsDB.xlsx")
oo.default_sheet = oo.sheets.first

2.upto(oo.last_row) do |line|
	Rating.create(name: oo.cell(line,'B'), score: oo.cell(line,'C'), when_rated: oo.cell(line,'A'), comment: oo.cell(line,'D'))
end