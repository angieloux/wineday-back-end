# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

if User.count == 0 
    User.create(username: 'AJ', password: 'password', password_confirmation: 'password', email: 'a@a.com')
    User.create(username: 'RedWineLover', password: 'password', password_confirmation: 'password', email: 'e@gmail.com')
    User.create(username: 'Marionne', password: 'password', password_confirmation: 'password', email: 'b@gmail.com')
    User.create(username: 'Grapes', password: 'password', password_confirmation: 'password', email: 'g@gmail.com')
end
puts 'added users'

products = [
    {
      points: 89,
      title: 'Caymus 1998 Cabernet Sauvignon (Napa Valley)',
      description: 'Creamy black cherry aromas layered with fresh brussel sprouts and spicy arugula flavors of red plums and toasted oak.',
      price: 70,
      variety: 'Cabernet Sauvignon',
      province: 'California',
      country: 'US',
      winery: 'Caymus',
      region: 'Napa Valley'
    },
    {
      points: 98,
      title: 'M. Chapoutier 1999 Le Méal Ermitage  (Hermitage)',
      description: "Chapoutier's selections of the best parcels of vines in Hermitage are set to become legendary. Sold under the ancient spelling of the appellation name (Ermitage), they represent the epitome of the power and concentration that lies behind the reputation of the appellation. This cuvée is the best of the collection, with its brooding, opaque character, suggesting rather than revealing power at this stage. Age it until your new-born baby is old enough to drink, and it will be just about ready.",
      price: 150,
      variety: 'Rhône-style Red Blend',
      province: 'Rhône Valley',
      country: 'France',
      winery: 'M. Chapoutier',
      region: 'Hermitage'
    },
    {
      points: 97,
      title: 'J.L. Chave 1999  Hermitage',
      description: 'Jean-Louis, the son of Gérard Chave, is now in charge of the family business, as well as being president of the Hermitage wine producers. He is continuing the family tradition of making powerful statements of Syrah from Hermitage, combining massive structure and over-powering perfumes. This 1999 seems to have the best of the traditional world of tannic immensity and the modern world of beautiful, ripe fruit. A wine that will age for a very long time.',
      price: 125,
      variety: 'Rhône-style Red Blend',
      province: 'Rhône Valley',
      country: 'France',
      winery: 'J.L. Chave',
      region: 'Hermitage'
    },
    {
      points: 96,
      title: 'Colgin 1999 Herb Lamb Vineyard Cabernet Sauvignon (Napa Valley)',
      description: 'Aromas lean toward black cherry, chocolate and herbs, which sally forth on the palate serving up more dense fruit, licorice, coffee and beautiful toast flavors. Tannins are smooth, supple and ripe. Long, lush and decadent on the finish.',
      price: 150,
      variety: 'Cabernet Sauvignon',
      province: 'California',
      country: 'US',
      winery: 'Colgin',
      region: 'Napa Valley'
    },
    {
      points: 96,
      title: "Stag's Leap Wine Cellars 1998 SLV Cabernet Sauvignon (Napa Valley)",
      description: 'Certainly one of the successes of the vintage. Packed with cassis, sage, plum, tobacco, earth and smoky oak, and perfectly dry and balanced. Sheer joy in the mouth, like liquid velvet. It changes every second, offering up tiers of flavors through the spicy finish.',
      price: 100,
      variety: 'Cabernet Sauvignon',
      province: 'California',
      country: 'US',
      winery: "Stag's Leap Wine Cellars",
      region: 'Napa Valley'
    },
    {
      points: 96,
      title: 'Dalla Valle 1999 Maya Red (Napa Valley)',
      description: 'Plush, smooth and packed tight with complex flavors. Blackberry, anise, black cherry, tar, coal, spice, earth and herbs remain tightly wound, waiting patiently to reveal their full charm in time. Supple, smooth tannins and beautiful balance give this wine classic elegance.',
      price: 120,
      variety: 'Red Blend',
      province: 'California',
      country: 'US',
      winery: 'Dalla Valle',
      region: 'Napa Valley'
    },
    {
      points: 96,
      title: 'E. Guigal 1998 La Mouline  (Côte Rôtie)',
      description: 'Even though the 42 months this wine has spent in new wood give it an intensely toasty character, the enormously soft, perfumed fruits and ripe, sweet flavors that go along with the wood produce a finely tuned, balanced wine that should age well over many years. As an expression of pure Syrah, there are few better.',
      price: 175,
      variety: 'Rhône-style Red Blend',
      province: 'Rhône Valley',
      country: 'France',
      winery: 'E. Guigal',
      region: 'Côte Rôtie'
    }
  ]

if Product.count == 0 
    products.each {|product| Product.create(product)}
    
end

puts 'added products'

if Order.count == 0 
    Order.create(number: 10104, user_id: 1, total: 20)
    Order.create(number: 00004, user_id: 2, total: 60)
    Order.create(number: 33304, user_id: 3, total: 100)
    Order.create(number: 22104, 
    user_id: 3, total: 200)
    Order.create(number: 29304, user_id: 4, total: 40)
    Order.create(number: 55000, user_id: 4, total: 40)

end

puts 'added orders'