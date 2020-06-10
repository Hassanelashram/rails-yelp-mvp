counter = 1
cats = ["chinese", "italian", "japanese", "french", "belgian"]
5.times do
  Restaurant.create(
    name: "restaurant#{counter}",
    address: "address#{counter}",
    phone_number: "0044#{counter}",
    category: cats.sample
  )
  counter += 1
end
