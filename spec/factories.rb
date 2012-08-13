FactoryGirl.define do
  factory :user do
    name "john"
    email"sample@sample"
    password "password"
    password_confirm "password"
  end
end