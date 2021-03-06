puts 'Seeding Users'

admin = User.find_by(email: "admin@scopicsoftware.com")
unless admin
  User.create(
   provider: 'email',
   uid: 'admin@scopicsoftware.com',
   encrypted_password: '$2a$12$gV.JN4aSJD13HVvVFSCr4.gx6xBJbFmK4OZF7gu7dQzLNGBj8.3Su',
   email: 'admin@scopicsoftware.com',
   maxbid: 100)
end

user1 = User.find_by(email: "user1@scopicsoftware.com")
unless user1
  User.create(
    provider: 'email',
    uid: 'user1@scopicsoftware.com',
    encrypted_password: '$2a$12$LnHMzlqX0xnMR5UuO374Ge7YFyX.uLMfQ3ky4EqDptuce/LC5xtfu',
    email: 'user1@scopicsoftware.com',
    maxbid: 100
  )
end

user2 = User.find_by(email: "user2@scopicsoftware.com")
unless user2
  User.create(
    provider: 'email',
    uid: 'user2@scopicsoftware.com',
    encrypted_password: '$2a$12$LnHMzlqX0xnMR5UuO374Ge7YFyX.uLMfQ3ky4EqDptuce/LC5xtfu',
    email: 'user2@scopicsoftware.com',
    maxbid: 100
  )
end

puts 'Seeding Items'

# ===================Seeding Items from TopHatter======================
SeedService.new.create_items
# ===================Seeding Items from TopHatter======================

# Seeding Items Manually
Item.create(
    title: "RESTORED to Battery Antique U.S.A. Mantel Clock #1819",
    description: "FEATURES: 1\r\n\r\nOriginal Antique Casing Sanded, Stained & Glossed\r\nHand Painted Gold Brass Decor\r\n2x Original Winding Arbor Holes on the Dial \r\nMetal Clock Face with Roman Numerals\r\nBlack Metal Hands\r\nBrass Face Cover with Glass \r\nOrnate Brass Feet\r\nWood with Gold Metal Columns & Marble look Decor\r\nBattery Mechanism\r\nCONDITION:\r\n\r\nCasing and parts fully restored (sanded, polished, stained & hand-painted)\r\nThe clock is in full quartz working order\r\nWood Grain Casing in Great Condition\r\nWear consistent with age & use\r\nRequires 1xAA battery\r\nThe description is noted to the best of our knowledge, any errors or omissions in our details are unintentional.",
    price: 395, bid: 490, expired: "2021-10-01 06:56:00",
    imagepath: "https://images.pexels.com/photos/821651/pexels-photo-821651.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260"
)

Item.create(
    title: "Rare Antique USA United States Hobo 1876-CC Year Trade Dollar Silver Color Coin",
    description: "• RARE Antique USA United States Hobo 1876-CC Trade Dollar Silver Color Coin\r\n• RESTRIKE\r\n• Original weight, size and edge!\r\n• Free shipping",
    price: 30, bid: 30, expired: "2021-09-26 06:52:00",
    imagepath: "https://images.pexels.com/photos/3389419/pexels-photo-3389419.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260"
)

Item.create(
    title: "Items similar to Antique Wood Candelabra Double Candle Holder Antique Inlaid Curved Wooden Candelabra FREE USA SHIPPING @Everything Vintage Home Decor on Etsy",
    description: "Antique Wood Candelabra Double Candle Holder Antique Inlaid Curved Wooden Candelabra FREE USA SHIPPING @Everything Vintage Home Decor by EverythingVintageBC on Etsy",
    price: 4, bid: 4, expired: "2021-09-24 05:55:00",
    imagepath: "https://images.pexels.com/photos/5202026/pexels-photo-5202026.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260"
)

Item.create(
    title: "Rare Antique USA United States 1796 Liberty Silver Color Dollar Coin",
    description: "ASIN\r\nB078X5FD4T\r\nItem model number\r\n787688850799\r\nManufacturer recommended age\r\n5 years and up\r\nIs Discontinued By Manufacturer\r\nNo\r\nMfg Recommended age\r\n5 year and up\r\nManufacturer\r\nBespoke Souvenir",
    price: 42, bid: 42, expired: "2021-03-07 06:37:00",
    imagepath: "https://images.pexels.com/photos/3987280/pexels-photo-3987280.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500 500w, https://images.pexels.com/photos/3987280/pexels-photo-3987280.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500 1000w"
)

Item.create(
    title: "Antique Webster Man In The Moon Sterling Silver Christening Baby Spoon 17.6g Antique Webster Man In The Moon Sterling Silver Christening Baby Spoon 17.6g Antique Webster Man In The Moon Sterling Silver Christening Baby Spoon 17.6g Antique Webster Man In The Moon Sterling Silver Christening Baby Spoon 17.6g Antique Webster Man In The Moon Sterling Silver Christening Baby Spoon 17.6g Antique Webster Man In The Moon Sterling Silver Christening Baby Spoon 17.6g Antique Webster Man In The Moon Sterling Silver Christening Baby Spoon 17.6g",
    description: "Description\r\nDelightful antique sterling silver baby spoon from between 1865 - 1928 made by Webster Co. in America.  The Man in the Moon spoon features a big smiling moon face with a little boy in cute pyjamas climbing up a ladder to see the moon.  The writing on the spoon is in a classic old typeset, 'The Man In The Moon'.  A perfect gift to present on the birth of a new baby or as Christening gift.  This spoon is in great antique condition with gentle ageing and minor surface scratches.  The rear of the spoon is stamped with sterling and the logo for the Webster Company.\r\n \r\nDimensions are follows:\r\n \r\nLength 10.5 cm x Width 3.1 cm x Thickness 0.6 - 1.5 mm\r\nWeight 17.6 grams",
    price: 110, bid: 110, expired: "2020-10-01 11:48:00",
    imagepath: "https://images.pexels.com/photos/769659/pexels-photo-769659.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260"
)

Item.create(
    title: "Antique Waterbury U.S.A Heavy Brass Ships Wheel Clock & Barometer Set",
    description: "Description\r\nVintage Waterbury 1Heavy Brass Ships Wheel Clock & Barometer Set. The heavy brass case measures 205mm across the ships wheell and 153mm across the base, working well and has a nice strike on the hour and at 7. ",
    price: 1501, bid: 1543, expired: "2021-03-07 06:54:00",
    imagepath: "https://images.pexels.com/photos/1308885/pexels-photo-1308885.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260"
)

Item.create(
    title: "Pat 1888/9 PRISTINE Antique/Vintage USA ARCADE IMPERIAL Wood Coffee Mill/Grinder",
    description: "(1) Beautiful Patented 1888 & 1889 Antique American ARCADE MANUFACTURING CO. 9028, Cast Iron & Wood Coffee Mill/Grinder. Country of Origin: United States of America. Patented Design Dates: September 25, 1888 & March 19, 1889. Overall Height w/Handle: 10 3/4. Overall Top Plate Dimensions: 6 7/8\" x 6 7/8\". Overall Box Dimensions: 5 5/8\" x 5 11/16\". Overall Base Plate Dimensions: 6 7/8\" x 6 3/4\". Original/Authentic Components - Except Drawer Pull - Replaced. \"IMPERIAL\" & ARCADE MANUFACTURING COMPANY Logo on Outer Ring of Cover. Metal Finished in Golden-Bronze Lacquer - Beautifully Aged Patina. Grinder Mechanism May or May Not Need Adjusting. Vintage AMERICAN JOHN WRIGHT Red 2 Fly-Wheels Cast Iron+Wood Coffee Mill/Grinder (#272751753453).\r\n1905 Pat American Landers Frary & Clark UNIVERSAL #110 Metal Coffee Mill/Grinder (#272680114696). RARE+PRISTINE Antique/Vintage MUTZIG-FRAMONT French European Coffee Mill/Grinder (#272691287797). I love the coffee grinder.\r\n\r\n1905 Pat Antique Landers Frary & Clark UNIVERSAL #110 Metal Coffee Mill/Grinder (#272697576966). Fast excellent price awesome thank you. 1930's Vintage ELMAish European Fly Wheel Marble+Chrome Coffee Mill/Grinder (#272687198768). Even better than in the photos. Vintage European Netherland Dutch Delft Blue Windmill Copper Coffee Mill/Grinder (#272673129466).\r\n\r\nMill arrived promptly and beautifully packaged! Authentic Vintage European German Peter Dienes Pe De Solida Coffee Mill/Grinder (#272696081354). Antique/Vintage ARMIN TROSSER German European Wood Coffee Mill/Grinder (#272751751676). 1950 Pristine Vintage European French PEUGEOT FRERES DIABOLO Coffee Mill/Grinder (#272682879872). A+ Pristine Vintage Netherlands Holland Wood & Wicker Koffie Coffee Mill/Grinder (#272696081289).\r\n\r\nLot Zassenhaus Authentic Antique Vintage Wood & Metal Coffee Grinder Mills (#272487045412). PRISTINE 2 Pc Lot Zassenhaus Authentic Vintage Wood & Metal Coffee Grinder Mills (#272546040894). Authentic Vintage Belgium European A E D MARQUE DEPOSE Wood Coffee Mill/Grinder (#272751751659). Thanks for your help w/selection. I would have never picked this one, yet I it.\r\nA+ RARE 1930's Vintage French PEUGEOT FRERES BREVETE DEPOSE Coffee Mill/Grinder (#272793740819). Page #49 & 98 in. Early American Coffee Mills by Michael L. Antique Coffee Grinders: American, English and European.\r\n\r\nA Schiffer Book for Collectors by Michael L. Please see all photographs to view this listings front, back, top, bottom, sides and angles.\r\n\r\nAll photographs shown depict the actual item for this listing. All the information that I have supplied is truthful and hopefully very accurate. And all the information given is to the best of my knowledge and experience regarding antique/vintage coffee mills/grinders. Product PERFECTION and AUTHENTICITY are accurate descriptions of all the items I offer to you. All items come from a smoke-free and animal-free environment.\r\n\r\nThank you for visiting and viewing my item. The item \"Pat 1888/9 PRISTINE Antique/Vintage USA ARCADE IMPERIAL Wood Coffee Mill/Grinder\" is in sale since Wednesday, March 21, 2018.\r\n\r\nThis item is in the category \"Collectibles\\Kitchen & Home\\Kitchenware\\Small Appliances\\Coffee Grinders, Mills\". The seller is \"pristinestufflady\" and is located in Trenton, New Jersey. This item can be shipped to United States, Canada, United Kingdom, Denmark, Romania, Slovakia, Bulgaria, Czech republic, Finland, Hungary, Latvia, Lithuania, Malta, Estonia, Australia, Greece, Portugal, Cyprus, Slovenia, Japan, China, Sweden, South Korea, Indonesia, Taiwan, Thailand, Belgium, France, Hong Kong, Ireland, Netherlands, Poland, Spain, Italy, Germany, Austria, Russian federation, Israel, Mexico, New Zealand, Philippines, Singapore, Switzerland, Norway, Saudi arabia, Ukraine, United arab emirates, Qatar, Kuwait, Bahrain, Croatia, Malaysia, Chile, Colombia, Costa rica, Dominican republic, Panama, Trinidad and tobago, Guatemala, El salvador, Honduras, Jamaica.\r\nBrand: ARCADE MANUFACTURING COMPANY Ethnicity: American Type: Box Coffee Mill/Grinder Original: YES Age: Antique Collectible: YES Featured Refinements: Antique/Vintage Coffee Mill/Grinder Authentic: YES Portable: YES Working Order: YES Line Name: \"Imperial Mills\" Primary Material: Wood Years of Production: 1889 Primary Color: Dark Butterscoth-Colored Wood Other Colors: Golden Bronze & Black Lacquer Secondary Material: Cast Iron Metal Model #: 9028 Country/Region of Manufacture: United States Feature: Ornate Cast Iron Domed Hopper Additional Feature: \"IMPERIAL\" Logo on Outer Ring of Cover More Features: Cast Iron Sunken Hopper Complete: Yes Another Feature: \"ARCADE MANUFACTURING COMPANY\" Logo on Outer Ring Tertiary Material: Paper Label",
    price: 15, bid: 15, expired: "2021-04-27 06:52:00",
    imagepath: "https://images.pexels.com/photos/6394933/pexels-photo-6394933.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500 500w, https://images.pexels.com/photos/6394933/pexels-photo-6394933.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500 1000w"
)

Item.create(
    title: "Lot #83",
    description: "Large antique cast iron bell marked USA 2 with the cast iron bell holder marked Crystal Metal 2.",
    price: 41, bid: 1543, expired: "2020-10-01 06:58:00",
    imagepath: "https://images.pexels.com/photos/1566435/pexels-photo-1566435.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500 500w, https://images.pexels.com/photos/1566435/pexels-photo-1566435.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500 1000w"
)

Item.create(
    title: "ANTIQUE USA AMERICAN WEBSTER COMPANY STERLING SILVER SALT & PEPPER SHAKERS",
    description: "Description\r\nTo the base of both is the hallmark of the WEBSTER COMPANY the letters WC with an arrow & the word STERLING. They look to be late 1800s but exact age is unknown. Combined weight is approx 106 grams, bases are 50mm in diameter & height 168mm (heights vary slightly). Some denting and general wear, they need a good polish. NOTE: The bases say CEMENT LOADED, but they certainly don’t feel like they are weighted, if they are it’s very minor.",
    price: 199, bid: 490, expired: "2021-09-30 06:47:00",
    imagepath: "https://images.pexels.com/photos/1566435/pexels-photo-1566435.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500 500w, https://images.pexels.com/photos/1566435/pexels-photo-1566435.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500 1000w"
)

Item.create(
    title: "ANTIQUE USA AMERICAN WEBSTER COMPANY STERLING SILVER CANDLE SNUFFER. ANTIQUE USA AMERICAN WEBSTER COMPANY STERLING SILVER CANDLE SNUFFER.",
    description: "Description\r\nIt looks to be late 1800s but exact age is unknown. Weight is approx 19.5 grams and is 19cms long. Some wear & marks but should polish up a treat.",
    price: 79, bid: 111, expired: "2020-09-30 01:51:00",
    imagepath: "https://images.pexels.com/photos/1071078/pexels-photo-1071078.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500 500w, https://images.pexels.com/photos/1071078/pexels-photo-1071078.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500 1000w"
)
