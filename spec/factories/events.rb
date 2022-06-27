FactoryBot.define do
  factory :event do
    title { "MyString" }
    description { nil }
    start_date { "2022-06-27 15:27:24" }
    end_date { "2022-06-27 15:27:24" }
    address { "MyString" }
    venue { "MyString" }
    private { false }
    capacity { 1 }
    price { 1 }
    user { nil }
    status { 1 }
    category { nil }
    sub_category { "MyString" }
  end
end
