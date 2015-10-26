FactoryGirl.define do
  factory :question do
  end

  factory :answer_1, class: Answer do
    body 'soak in tub water that has already been used'
  end

  factory :answer_2, class: Answer do
    body 'sleep in a bed that has already been slept in'
  end
end
