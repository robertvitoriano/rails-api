5.times do
  Movie.create({
    title:Faker::Movie.title,
    description:Faker::Lorem.sentence,
    gender:Faker::Movie.title,
    release_date:"2007-12-04 00:00:00"
  })
end