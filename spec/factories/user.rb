# This will guess the User class
FactoryBot.define  do
  factory :user, class: 'User' do
    name { "John Doe" }
    email { "john@test.com" }
  end
end
