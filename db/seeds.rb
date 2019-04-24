# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Seed batches

creators = ["MDD", "ENE", "l337"]

Batch.create([{
  creator: creators[0],
  date: Date.new(2019, 3, 12),
  batch_cuid: "ascjok13nlknclsa"
  },
  {
  creator: creators[1],
  date: Date.new(2019, 2, 02),
  batch_cuid: "fasdkjlk2n3lkfds"
    },
  {
  creator: creators[2],
  date: Date.new(2019, 4, 12),
  batch_cuid: "2k3l1nmlkd2lk33k"
    }])

# Seed samples

firstNames = ["Matt", "Dave", "Cynthia", "Liz", "Rebecca", "Tom", "Sally", "Steve"]
lastNames = ["A", "B", "C", "D", "E", "F", "G", "H", "I"]
batch_ids = [1, 2, 3]

id_array = (1..999).to_a
age_array = (21..90).to_a

20.times do |i|
  Sample.create(
    first_name: firstNames.sample,
    last_name: lastNames.sample,
    batch_id: batch_ids.sample,
    age: age_array.sample,
    sample_cuid: "#{lastNames.sample + id_array.sample.to_s + lastNames.sample + id_array.sample.to_s}"
  )
end
