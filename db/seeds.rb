# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


job_no = %w[13-516 13-520 13-548 13-687 13-986]
units  = {"30-16" => "detail",
          "P-1" => "post",
          "P-2" => "post", 
          "1A1" => "rail",
          "1A2" => "rail"}

uns = []
units.each do |name, type|
  uns << Unit.create(name: name, unit_type: type)
end

job_no.each do |jn|
  j = Job.create(name: Faker::Company.name, number: jn)
  rel = j.releases.create(label: "A")
  dwg = nil
  (1..10).each do |n|
    dwg = rel.drawings.create(number: n)
  end
  dwg.entries.create(child_id: uns.sample, quantity: 2, ship_loose: 2)
end
