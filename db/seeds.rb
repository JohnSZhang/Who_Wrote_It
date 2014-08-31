# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Create some authors

Author.create(name: "Ocar Wild", nationality: "Ireland", birth: 1854, sex: "m")
Author.create(name: "James Joyce", nationality: "Ireland", birth:1882 , sex: "M")
Author.create(name: "Arthur Conan Doyle", nationality: "United Kingdom", birth: 1859 , sex: "M")
Author.create(name: "Jane Austen", nationality: "United Kingdom", birth:1775 , sex: "F")