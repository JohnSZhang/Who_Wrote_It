# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Create some authors

wild = Author.create(name: "Oscar Wild", nationality: "Ireland", birth: 1854, sex: "m")
joyce = Author.create(name: "James Joyce", nationality: "Ireland", birth:1882 , sex: "M")
doyle = Author.create(name: "Arthur Conan Doyle", nationality: "United Kingdom", birth: 1859 , sex: "M")
austen = Author.create(name: "Jane Austen", nationality: "United Kingdom", birth:1775 , sex: "F")
pnp = File.read("db/books/pride_and_prejudice.txt")
austen.books.create(title: "Pride and Prejudice", content: pnp)
ulysses = File.read("db/books/ulysses.txt")
joyce.books.create(title: "Ulysses", content: ulysses)
earnest = File.read("db/books/importance_of_being_earnest.txt")
wild.books.create(title: "The Importance of Being Earnest", content: earnest)
scarlet = File.read("db/books/a_study_in_sarlet.txt")
doyle.books.create(title: "A Study In Scarlet", content: scarlet)
