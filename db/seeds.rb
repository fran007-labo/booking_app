
20.times do |n|
  name = Faker::Lorem.sentence(word_count: 1)
  price = "12#{n+1}".to_i
  Tour.create!(
    name:  name,
    price: price
  )
end