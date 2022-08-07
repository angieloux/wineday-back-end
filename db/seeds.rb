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
    },
  {
    points: 91,
    title: 'Collovray et Terrier 2007 Vieilles Vignes  (Pouilly-Fuissé)',
    description: 'Spicy, toasty wine, the fruit tropically rich. The texture is dense, the acidity important but not dominant. Delicious wine, now maturing well.',
    price: 27,
    variety: 'Chardonnay',
    region: 'Pouilly-Fuissé',
    province: 'Burgundy',
    country: 'France',
    winery: 'Collovray et Terrier',
  },
  {
    points: 91,
    title: 'Domaine Denis Jeandeau 2008  Viré-Clessé',
    description: 'Spicy, toasty wine that balances the wood with rich fruit. Rounded, smooth texture, lifted by wood spice and apricot juice.',
    price: 45,
    variety: 'Chardonnay',
    region: 'Viré-Clessé',
    province: 'Burgundy',
    country: 'France',
    winery: 'Domaine Denis Jeandeau',
  },
  {
    points: 91,
    title: 'Jarvis 2005 Estate Cabernet Sauvignon (Napa Valley)',
    description: "It's all about sweet, delicious flavor in this 100% Cabernet. Dazzles the mouth with the essence of blackberries, cassis, cherry tart with the smoky crust, chocolate and exotic sandalwood, wrapped into the richest, finest tannins you can imagine. Compulsively drinkable, if a little too forward with its charms. Now–2013.",
    price: 85,
    variety: 'Cabernet Sauvignon',
    region: 'Napa Valley',
    province: 'California',
    country: 'US',
    winery: 'Jarvis',
  },
  {
    points: 91,
    title: 'Jarvis 2007 Petite Verdot (Napa Valley)',
    description: "Loads of plum, dark chocolate, blackberry and exotic spices in this big, dry wine. Oak, too, in the form of exquisite vanilla and caramel. It's absolutely delicious, but maybe a little one-dimensional, showing that Petit Verdot by itself needs some help from other varieties.",
    price: 80,
    variety: 'Petite Verdot',
    region: 'Napa Valley',
    province: 'California',
    country: 'US',
    winery: 'Jarvis',
  },
  {
    points: 91,
    title: 'Marcel Couturier 2008 Les Longues Terres  (Mâcon-Loché)',
    description: 'Balanced, delicious wine, bringing in very fresh fruit, ripe apple flavors, a mineral streak of acidity and finely textured wood. Could keep for another 1–2 years.',
    price: 45,
    variety: 'Chardonnay',
    region: 'Mâcon-Loché',
    province: 'Burgundy',
    country: 'France',
    winery: 'Marcel Couturier',
  },
  {
    points: 91,
    title: 'Marco Felluga 2007 Mongris Riserva Pinot Grigio (Collio)',
    description: "Here's a gorgeous Riserva expression of Pinot Grigio with a creamy, dense mouthfeel and prominent aromas of peach cream, apricot, almond paste and honey. Those yellow fruit flavors last long on the palate and would pair with shellfish or white meat. Very nice.",
    price: 30,
    variety: 'Pinot Grigio',
    region: 'Collio',
    province: 'Northeastern Italy',
    country: 'Italy',
    winery: 'Marco Felluga',
  },
  {
    points: 91,
    title: 'Penfolds 2007 Bin 389 Cabernet Sauvignon-Shiraz (South Australia)',
    description: "The most recent release of Penfolds' “Baby Grange” is a beauty, loaded with the chocomint character that has made it famous. Dark berry and cassis take over on the creamy, lushly textured midpalate, finishing long and velvety. Drink now or hold up to 15 years.",
    price: 36,
    variety: 'Cabernet Sauvignon-Shiraz',
    region: 'South Australia',
    province: 'South Australia',
    country: 'Australia',
    winery: 'Penfolds',
  },
  {
    points: 91,
    title: 'Peter Franus 2006 Red Wine Red (Napa Valley)',
    description: 'Quite a good wine, with Cabernet-esque blackberries and black currants, and a rich toastiness from charred oak. Feels a little angular and jammy in youth. Give it two or three years in the cellar to soften and mellow.',
    price: 50,
    variety: 'Bordeaux-style Red Blend',
    region: 'Napa Valley',
    province: 'California',
    country: 'US',
    winery: 'Peter Franus',
  },
  {
    points: 91,
    title: 'Pierre Vessigaud 2008 Vers Pouilly  (Pouilly-Fuissé)',
    description: 'Rounded with a good texture, this is a wine that has a good future. It has weight, fruit that is fresh and well wooded showing plenty of spice and bright acidity.',
    price: 34,
    variety: 'Chardonnay',
    region: 'Pouilly-Fuissé',
    province: 'Burgundy',
    country: 'France',
    winery: 'Pierre Vessigaud',
  },
  {
    points: 91,
    title: 'Rodney Strong 2008 Reserve Pinot Noir (Russian River Valley)',
    description: 'Made in an immediately appealing style, this Pinot is soft and lush and vast in fruit and oak richness. It floods the palate with cherry and raspberry pie filling, vanilla, cinnamon and sandalwood flavors, and the texture is silky and elegant.',
    price: 40,
    variety: 'Pinot Noir',
    region: 'Russian River Valley',
    province: 'California',
    country: 'US',
    winery: 'Rodney Strong',
  },
  {
    points: 93,
    title: 'Tolosa 2012 Marley Anne Pinot Noir (Edna Valley)',
    description: 'Earth, mud and wet clay are laid against a ripe black raspberry frame on this bottling from winemaker Larry Brooks. Plenty of life, zest and lift enliven the beautifully spiced palate, with bright red cherries, cranberries and purple flowers cut by a line of pencil-lead minerality and a savory fennel element.',
    price: 65,
    variety: 'Pinot Noir',
    region: 'Edna Valley',
    province: 'California',
    country: 'US',
    winery: 'Tolosa',
  },
  {
    points: 93,
    title: 'Tres Sabores 2012 Zinfandel (Rutherford)',
    description: "From the producer's dry-farmed estate vineyard, this elegantly powerful wine opens in cracked black pepper, dried herb and cedar, continuing the peppery theme on the palate. Black cherry and high-toned blackberry combine with the more savory elements, with an overall softness of texture and lengthy finish.",
    price: 38,
    variety: 'Zinfandel',
    region: 'Rutherford',
    province: 'California',
    country: 'US',
    winery: 'Tres Sabores',
  },
  {
    points: 93,
    title: 'Allegrini 2011 La Poja Corvina (Veronese)',
    description: 'Opulent as well as elegant, this structured red boasts aromas of black currant, exotic spice, new oak and fragrant blue flower. Made entirely with native grape Corvina, the velvety palate doles out spiced blackberry, juicy cherry, licorice and black pepper. Firm, polished tannins provide the smooth framework.',
    price: 95,
    variety: 'Corvina',
    region: 'Veronese',
    province: 'Veneto',
    country: 'Italy',
    winery: 'Allegrini',
  },
  {
    points: 93,
    title: "Château Vignelaure 2010 Red (Coteaux d'Aix-en-Provence)",
    description: 'This serious wine is still developing even after five years. It is rich, dense and concentrated with firm tannins that lie under the ripe black fruits and acidity. From vineyards to the east of Aix-en-Provence, the wine has a mineral, structured character that needs to age. Drink from 2018.',
    price: 32,
    variety: 'Provence red blend',
    region: "Coteaux d'Aix-en-Provence",
    province: 'Provence',
    country: 'France',
    winery: 'Château Vignelaure',
  },
  {
    points: 93,
    title: 'D.R. Stephens 2012 Moose Valley Vineyard Cabernet Sauvignon (St. Helena)',
    description: 'This wine is sanguine and elegant despite its full-figured size. Dried cranberry and cassis play on the palate, streaked by an elusive hit of white pepper. Bright and dancing in minerality, it finishes velvety and smooth, just the right amount of toasted oak showing through.',
    price: 150,
    variety: 'Cabernet Sauvignon',
    region: 'St. Helena',
    province: 'California',
    country: 'US',
    winery: 'D.R. Stephens',
  },
  {
    points: 93,
    title: 'Domaine Méo-Camuzet 2013 Les Cras Premier Cru  (Chambolle-Musigny)',
    description: 'A beautifully perfumed wine, this offers a line of fine tannins and brilliant aromatic fruitiness. Cherries and strawberries show strongly against a backdrop of tannins and structure. The aftertaste, still with a hint of dryness, is round with great fragrant fruit. Drink from 2019.',
    price: 68,
    variety: 'Pinot Noir',
    region: 'Chambolle-Musigny',
    province: 'Burgundy',
    country: 'France',
    winery: 'Domaine Méo-Camuzet',
  },
  {
    points: 93,
    title: 'Domaine Ostertag 2013 Zellberg Pinot Gris (Alsace)',
    description: "Orange peel perfumes the rich pear notes and imbues them with the aromatic spice of citrus foliage and zest. The palate is full of friendly citrus and pear. Despite its texture and rich flavor, it's beautifully slender and light-footed, with an inherent, zesty brightness that makes this wine shine.",
    price: 58,
    variety: 'Pinot Gris',
    region: 'Alsace',
    province: 'Alsace',
    country: 'France',
    winery: 'Domaine Ostertag',
  },
  {
    points: 93,
    title: 'Domaine Zind-Humbrecht 2013 Calcaire Gewurztraminer (Alsace)',
    description: 'The restrained and floral opening of jasmine and mandarin peel leads to a palate that holds just a touch of residual sugar, filling this gorgeously balanced Gewurztraminer to the brim with sweet citrus swirls of tangerine, satsuma and mandarin. Notes of orange blossom hover and are pulled into focus by the textured mouthfeel of this immensely elegant wine.',
    price: 55,
    variety: 'Gewürztraminer',
    region: 'Alsace',
    province: 'Alsace',
    country: 'France',
    winery: 'Domaine Zind-Humbrecht',
  },
  {
    points: 93,
    title: 'Domaine Zind-Humbrecht 2013 Vieilles Vignes Gewurztraminer (Alsace)',
    description: 'Very ripe, red-cheeked Mirabelles and orange peel represent the aromatic top notes. With more air, mandarin juice becomes apparent, and the palate is wonderfully taut and concentrated. There is a haunting purity and a strong undertow of earth and stone that soars on the long finish.',
    price: 55,
    variety: 'Gewürztraminer',
    region: 'Alsace',
    province: 'Alsace',
    country: 'France',
    winery: 'Domaine Zind-Humbrecht',
  },
  {
    points: 93,
    title: 'Iron Horse 2010 National Geographic Ocean Reserve Blanc de Blancs Sparkling (Green Valley)',
    description: 'Formidable acidity gives this lovely wine a freshness around complementary layers of rose petal and strawberry-pomegranate. Made from a blend of two Chardonnay clones, it adds additional notes of tangerine and lemon-lime on the lengthy, complex finish.',
    price: 50,
    variety: 'Sparkling Blend',
    region: 'Green Valley',
    province: 'California',
    country: 'US',
    winery: 'Iron Horse',
  },
  {
    points: 93,
    title: 'Jean-Luc and Paul Aegerter 2013  Clos de Vougeot',
    description: 'Big, firm and dense, this is a powerful wine, with dark tannins that give a dry, concentrated character. The juicy plum and damson fruit flavors, along with the fresh aftertaste, will be a delicious balance as the wine develops. Drink from 2020.',
    price: 260,
    variety: 'Pinot Noir',
    region: 'Clos de Vougeot',
    province: 'Burgundy',
    country: 'France',
    winery: 'Jean-Luc and Paul Aegerter',
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