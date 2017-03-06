include ActionDispatch::TestProcess

FactoryGirl.define do

  factory :job do
    title 'Fix sink'
    description 'It needs fixing'
    user
  end

  factory :user  do
    sequence (:email)  {|n| "persodn#{n}@example.com" }
    password 'passwodsd'
  end

  factory :worker  do
  end

end
