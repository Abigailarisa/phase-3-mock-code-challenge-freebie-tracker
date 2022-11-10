puts "Creating companies..."
Company.create(name: "Google", founding_year: 1998)
Company.create(name: "Facebook", founding_year: 2004)
Company.create(name: "Dunder Mifflin", founding_year: 2002)
Company.create(name: "Enron", founding_year: 1995)

puts "Creating devs..."
Dev.create(name: "Rick")
Dev.create(name: "Morty")
Dev.create(name: "Mr. Meseeks")
Dev.create(name: "Gazorpazop")

puts "Creating freebies..."

30.times do
    Freebie.create(dev_id: Dev.all.sample.id, company_id: Company.all.sample.id, value: rand(1...100), item_name: Faker::Food.dish)

end
# Freebie.create(item_name: item_name, value: value, company_id: company_id, dev_id: dev_id)

# t.string :item_name
# t.integer :value
# t.integer :dev_id
# t.integer :company_id
# ***************************************************************
# * TODO: create freebies! Remember, a freebie belongs to a dev *
# * and a freebie belongs to a company.
# ***************************************************************
# Create freebies Here

puts "Seeding done!"
