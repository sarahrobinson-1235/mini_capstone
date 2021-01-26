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

Image.create([
  {
    url: "https://cdn.shopify.com/s/files/1/1098/9334/products/HH-2017-ED-3-Wick-Cylinder-1500x1500-Sweet-Strawberry-Preserves-Front.jpg?v=1527022082", product_id: 2
  },
  {
    url: "https://pbs.twimg.com/media/D9Bb6mCWwAE7pzX.jpg", product_id: 2
  },
  {
    url: "https://assets.pbimgs.com/pbimgs/rk/images/dp/wcm/202034/0415/apothecary-scented-candle-neroli-jasmine-c.jpg", product_id: 6
  },
  {
    url: "https://www.herbco.com/images/Category/large/c-327-jasmine-flower.jpg", product_id: 6
  },
  {
    url: "https://cdn.store-assets.com/s/139218/i/16296743.jpeg", product_id: 3
  },
  {
    url: "https://m.media-amazon.com/images/I/61OMhwMhWoL._AC_SS350_.jpg", product_id: 3
  },
  {
    url: "https://i.pinimg.com/474x/66/ac/b5/66acb5559a0ac4ddae647c66e7e1d3f6.jpg", product_id: 1
  },
  {
    url: "https://durefoods.com/wp-content/uploads/2019/07/The-Benefits-of-Vanilla.jpg", product_id: 1
  },
  {
    url: "https://www.bathandbodyworks.com/dw/image/v2/BBDL_PRD/on/demandware.static/-/Sites-master-catalog/default/dw8f428098/hires/024593557.jpg?sh=1500&sfrm=jpg", product_id: 7
  },
  {
    url: "https://i.pinimg.com/originals/9f/46/ef/9f46ef235b32b8c27f3a977dc75a7607.jpg", product_id: 7
  }
])