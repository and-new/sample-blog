FactoryGirl.define do
  factory :comment do
    author "mike"
    #body "something bla-bla"
    sequence(:body) { |n| "comment body #{n}" }
  end
end