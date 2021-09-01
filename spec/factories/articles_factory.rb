FactoryBot.define do
  factory :article do
    id { 1 }
    title { 'Article one test' }
    body { 'Add some information about the article test' }
    created_at { '2021-07-26 11:28:50.004449000 +0000' }
    updated_at { '2021-07-26 11:28:50.004449000 +0000' }
    status { 'public' }
    user_id { 1 }
  end
end
