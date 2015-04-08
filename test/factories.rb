FactoryGirl.define do
	factory :comment do
		rating "5_stars"
		association :user
		association :place
	end

	factory :user do
		sequence :email do |n|
			"person#{n}@example.com"
		end
		password "password"
		password_confirmation "password"
	end

	factory :place do
		name "The Blue Stove"
		description "Awesome baked stuff"
		address "123 Main St"
		latitude(42.3631519)
		longitude(-71.056098)
		association :user
	end

end