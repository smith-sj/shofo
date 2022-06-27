FactoryBot.define do
  factory :event do
    title { "MyString" }
    description { nil }
    start_date { "2022-06-27 13:02:32" }
    end_date { "2022-06-27 13:02:32" }
    address { "MyString" }
    venue { "MyString" }
    private { false }
    capacity { 1 }
    price { 1 }
    host { nil }
    status { nil }
    category { nil }
    sub_category { "MyString" }
  end
end
