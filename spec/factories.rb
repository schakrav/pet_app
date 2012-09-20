require 'factory_girl'

FactoryGirl.define do
	factory :owner do
		firstname  "Joey"
		lastname "Phelps"
		address "TPQ"
		city "Doha"
		country "QA"
		email "joey@cmu.edu"
		phone "97444548624"
	
end