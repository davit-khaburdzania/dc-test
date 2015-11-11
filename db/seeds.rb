data = {
  first_name: Faker::Name.name.split(' ').first,
  last_name: Faker::Name.name.split(' ').second,
  gender: ['male', 'female'].sample,
  date_birth: Faker::Date.backward([1, 4, 5, 3, 33].sample),
  country: Faker::Address.country,
  city: Faker::Address.city,
  street: Faker::Address.street_address,
  title: Faker::Lorem.word,
  color: Faker::Lorem.word,
  url: Faker::Internet.url,
  blog: Faker::Internet.url,
  height: (160..190).to_a.sample,
  weight: (50..80).to_a.sample,
  email: Faker::Internet.email,
  frequence: (3..10).to_a.sample,
  money: (200..800).to_a.sample,
  phone: Faker::PhoneNumber.cell_phone
}

patient = Patient.create(data)


[3, 4, 5, 6, 7].sample.times do
  data = {
    patient: patient,
    name: Faker::Name.name,
    pain_site: Faker::Lorem.word,
    pain_note: Faker::Lorem.word,
    examination_notes: Faker::Lorem.word,
    age: (18..40).to_a.sample,
    location: Faker::Address.street_address,
    date: Faker::Date.backward([1, 4, 5, 3, 33].sample)
  }

  Consultation.create(data)
end
