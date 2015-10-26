# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

questions = 3.times.collect do
  Question.create()
end

questions.each do |question|
  question.answers.create([{ body: 'eat cheese' }, { body: 'not eat cheese' }])
end
