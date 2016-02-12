Product.destroy_all

10.times do Product.create(
  name: Faker::Commerce.product_name,
  image: Faker::Avatar.image,
  description: Faker::Lorem.paragraph,
  price: Faker::Commerce.price,
  category: Faker::Lorem.word
  )
end
