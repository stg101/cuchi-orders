# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Order.delete_all
Product.delete_all
Product.create( name: 'palta', price: 15, available: true, emoji: '🥑')
Product.create( name: 'queso', price: 15, available: true, emoji: '🧀')
Product.create( name: 'huevo con hotdog', price: 15, available: true, emoji: '🌭')
Product.create( name: 'torreja', price: 15, available: true, emoji: '🍳')
Product.create( name: 'pollo', price: 20, available: true, emoji: '🍗')