FactoryGirl.define do
  # what you want to call a user
  factory :user do
    name "phil"
    email "phil@phil.com"
    password "password"
  end

  factory :invalid_user, class: User do
    name nil
    email nil
  end

  factory :admin, class: User do
    name "admin"
    email "admin@admin.com"
    password "admin"
    admin true
  end

end