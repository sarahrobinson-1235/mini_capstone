# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#product = Product.new(name: "Strawberry", price: 8, description:"strawberry scented 3 wick candle")
#product.save

#product = Product.new(name: "Isalnd Dream", price: 12, description:"floral/fresh scented candle")
#product.save

#product = Product.new(name: "Beeswax", price: 20, description:"Organic non-scented candle")
#product.save

image = Image.new(url: "https://cdn.shopify.com/s/files/1/1098/9334/products/HH-2017-ED-3-Wick-Cylinder-1500x1500-Sweet-Strawberry-Preserves-Front.jpg?v=1527022082", product_id: 2)
image.save

image = Image.new(url: "https://pbs.twimg.com/media/D9Bb6mCWwAE7pzX.jpg", product_id: 2)
image.save

image = Image.new(url: "https://www.besthealthmag.ca/wp-content/uploads/2019/03/Strawberry-Benefits.jpg", product_id: 2)
image.save