FactoryBot.define do
  factory :comment do
    id { 1 }
    commenter { 'comment test' }
    body { 'this is a test text on comment' }
    article_id { 1 }
    created_at { '2021-07-26 12:13:47.364494000 +0000' }
    updated_at { '2021-07-26 12:13:47.364494000 +0000' }
    status { 'public' }
    user_id { 1 }
  end
end
