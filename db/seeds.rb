# frozen_string_literal: true

25.times do
  Post.create(
    title: Faker::Food.dish,
    content: Faker::Lorem.paragraph,
  )
end
