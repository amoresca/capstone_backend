# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

# Categories -------------------------------------------------------
games = Category.create(name: "Games")
toys = Category.create(name: "Toys")
outdoor = Category.create(name: "Outdoor")
movies = Category.create(name: "Movies & TV")
music = Category.create(name: "Music")
sports = Category.create(name: "Sports")
clothing = Category.create(name: "Clothing")
books = Category.create(name: "Books")
beauty = Category.create(name: "Beauty & Health")
pets = Category.create(name: "Pets")
food = Category.create(name: "Food & Drink")
home = Category.create(name: "Home & Garden")
other = Category.create(name: "Other")

# Users ------------------------------------------------------------
harry = User.create({
  username: "Harry-P",
  email: "harry@gmail.com",
  password: "password",
  first_name: "Harry",
  last_name: "Potter",
  image_url: "https://pyxis.nymag.com/v1/imgs/171/429/c95b07becc2bef532d9669b4824ea4386f-08-harry-potter.rsquare.w1200.jpg"
})

hermione = User.create({
  username: "Hermione-G",
  email: "hermione@gmail.com",
  password: "password",
  first_name: "Hermione",
  last_name: "Granger",
  image_url: "https://pbs.twimg.com/profile_images/1346367902199422983/w0Ah8bUi_400x400.jpg"
})

ron = User.create({
  username: "Ron-W",
  email: "ron@gmail.com",
  password: "password",
  first_name: "Ron",
  last_name: "Weasley",
  image_url: "https://imagesvc.meredithcorp.io/v3/mm/image?q=85&c=sc&poi=face&w=400&h=400&url=https%3A%2F%2Fstatic.onecms.io%2Fwp-content%2Fuploads%2Fsites%2F14%2F2010%2F11%2F10%2F110910-Ron-1-400_0.jpg"
})

draco = User.create({
  username: "Draco-M",
  email: "draco@gmail.com",
  password: "password",
  first_name: "Draco",
  last_name: "Malfoy",
  image_url: "https://pbs.twimg.com/profile_images/1298380607068745729/t65sdSut_400x400.jpg"
})

neville = User.create({
  username: "Neville-L",
  email: "neville@gmail.com",
  password: "password",
  first_name: "Neville",
  last_name: "Longbottom",
  image_url: "https://64.media.tumblr.com/934397e82c19db07f83f2fe37d019965/12f0c5ef829885cb-45/s400x600/0272eba5eb335d8f2be562478e598565a47b3cde.png"
})

blaise = User.create({
  username: "Blaise-Z",
  email: "blaise@gmail.com",
  password: "password",
  first_name: "Blaise",
  last_name: "Zabini",
  image_url: "https://static.wikia.nocookie.net/stories-by-jayson/images/f/fa/Blaise-zabini.jpg/revision/latest/smart/width/200/height/200?cb=20170827173507"
})

gregory = User.create({
  username: "Gregory-G",
  email: "gregory@gmail.com",
  password: "password",
  first_name: "Gregory",
  last_name: "Goyle",
  image_url: "https://static.wikia.nocookie.net/ashes_of_chaos/images/0/0e/Goyle.jpg/revision/latest/smart/width/200/height/200?cb=20200801162343"
})

cho = User.create({
  username: "Cho-C",
  email: "cho@gmail.com",
  password: "password",
  first_name: "Cho",
  last_name: "Chang",
  image_url: "https://pbs.twimg.com/profile_images/1168901088914890754/eaFIimRg_400x400.jpg"
})

susan = User.create({
  username: "Susan-B",
  email: "susan@gmail.com",
  password: "password",
  first_name: "Susan",
  last_name: "Bones",
  image_url: "https://yt3.ggpht.com/ytc/AAUvwnhDa2A_jAoilADyoUKiZYsogsOSBNsphFjBRl-L=s900-c-k-c0x00ffffff-no-rj"
})

parvati = User.create({
  username: "Parvati-P",
  email: "parvati@gmail.com",
  password: "password",
  first_name: "Parvati",
  last_name: "Patil",
  image_url: "https://pbs.twimg.com/profile_images/476497868371423232/DhV08cZk.jpeg"
})

ginny = User.create({
  username: "Ginny-W",
  email: "ginny@gmail.com",
  password: "password",
  first_name: "Ginny",
  last_name: "Weasley",
  image_url: "https://openpsychometrics.org/tests/characters/test-resources/pics/HP/8.jpg"
})

# Friendships -------------------------------------------------------
Friendship.create([
  { 
    requestor_id: harry.id,
    requestee_id: hermione.id,
    status: "accepted",
    read: true
  },
  { 
    requestor_id: ron.id,
    requestee_id: harry.id,
    status: "accepted",
    read: true
  },
  { 
    requestor_id: ron.id,
    requestee_id: hermione.id,
    status: "accepted",
    read: true
  },
  { 
    requestor_id: harry.id,
    requestee_id: parvati.id,
    status: "accepted",
    read: true
  },
  { 
    requestor_id: neville.id,
    requestee_id: harry.id,
    status: "accepted",
    read: true
  },
  { 
    requestor_id: hermione.id,
    requestee_id: parvati.id,
    status: "accepted",
    read: true
  },
  { 
    requestor_id: parvati.id,
    requestee_id: ginny.id,
    status: "accepted"
  },
  { 
    requestor_id: ginny.id,
    requestee_id: harry.id,
    status: "pending",
    read: false
  },
  { 
    requestor_id: cho.id,
    requestee_id: harry.id,
    status: "pending",
    read: true
  },
  { 
    requestor_id: harry.id,
    requestee_id: neville.id,
    status: "pending",
    read: false
  },
])

# Tags --------------------------------------------------------------
t_brooms = Tag.create(name: "brooms")
t_quidditch = Tag.create(name: "quidditch")
t_gryffindor = Tag.create(name: "Gryffindor")
t_school = Tag.create(name: "school")
t_hogwarts = Tag.create(name: "Hogwarts")
t_treats = Tag.create(name: "treats")
t_nonfiction = Tag.create(name: "nonfiction")
t_harry = Tag.create(name: "Harry Potter")
t_meta = Tag.create(name: "meta")
t_bluray = Tag.create(name: "bluray")
t_board = Tag.create(name: "board games")
t_multiplayer = Tag.create(name: "multiplayer")
t_office = Tag.create(name: "office")
t_writing = Tag.create(name: "writing")
t_new = Tag.create(name: "new")
t_bedding = Tag.create(name: "bedding")
t_decor = Tag.create(name: "decor")
t_hats = Tag.create(name: "hats")
t_pranks = Tag.create(name: "pranks")
t_spying = Tag.create(name: "spying")
t_zonko = Tag.create(name: "Zonko's")
t_uniform = Tag.create(name: "uniform")
t_hair = Tag.create(name: "hair")
t_hairspray = Tag.create(name: "hairspray")
t_shampoo = Tag.create(name: "shampoo")


# Items -------------------------------------------------------------
harry_nimbus = Item.create({
  name: "Nimbus 2000",
  user_id: harry.id,
  image_url: "https://media.karousell.com/media/photos/products/2020/6/26/nimbus_2000_broomstick_lamp_1593188159_ab58c689_progressive.jpg",
  category_id: sports.id,
  available: false
})
harry_set = Item.create({
  name: "Quidditch Set",
  user_id: harry.id,
  image_url: "http://sgwmscdnimages.azureedge.net/154/4-27-2020/49657832794733ates.JPG",
  category_id: sports.id,
  available: true
})
harry_scarf = Item.create({
  name: "Gryffindor Scarf",
  user_id: harry.id,
  image_url: "https://static1.funidelia.com/499485-f6_big2/deluxe-edition-gryffindor-scarf-harry-potter.jpg",
  category_id: clothing.id,
  available: true
})
harry_owl = Item.create({
  name: "Owl Treats",
  user_id: harry.id,
  image_url: "https://www.omlet.co.uk/images/cache/768/768/treat-selection-for-budgies.jpg",
  category_id: pets.id,
  available: true
})
harry_book = Item.create({
  name: "Quidditch Through the Ages",
  user_id: harry.id,
  image_url: "https://d1w7fb2mkkr3kw.cloudfront.net/assets/images/book/lrg/9781/5266/9781526608123.jpg",
  category_id: books.id,
  available: true
})
hermione_book = Item.create({
  name: "Hogwarts: A History",
  user_id: hermione.id,
  image_url: "https://cdn.waterstones.com/images/00126640-400x400.jpeg",
  category_id: books.id,
  available: true
})
hermione_movie = Item.create({
  name: "Harry Potter 8-Film Collection",
  user_id: hermione.id,
  image_url: "https://pisces.bbystatic.com/image2/BestBuy_US/images/products/5634/5634401_sa.jpg",
  category_id: movies.id,
  available: false
})
hermione_game = Item.create({
  name: "Settlers of Catan",
  user_id: hermione.id,
  image_url: "https://images.squarespace-cdn.com/content/v1/53ec790ae4b0396cbd14d8a1/1573707080200-DTWVERY1KWOXN3LPL9X4/ke17ZwdGBToddI8pDm48kAf-OpKpNsh_OjjU8JOdDKBZw-zPPgdn4jUwVcJE1ZvWQUxwkmyExglNqGp0IvTJZUJFbgE-7XRK3dMEBRBhUpzAFzFJoCInLPKyj9AG8yKe7-Q2aFvP177fkO9TY_-rz5WoqqTEZpmj4yDEOdwKV68/catan-5th-playtonic-board-games-4.jpg",
  category_id: games.id,
  available: true
})
hermione_quill = Item.create({
  name: "Quill Pen",
  user_id: hermione.id,
  image_url: "https://irongatearmory.com/wp-content/uploads/2019/02/906BN-Brown-Feather-Quill-with-Stand-600x600.jpg",
  category_id: other.id,
  available: true
})
ron_pillow = Item.create({
  name: "Chudley Cannons Pillow",
  user_id: ron.id,
  image_url: "https://res.cloudinary.com/teepublic/image/private/s--EV-Cqlzz--/c_crop,x_10,y_10/c_fit,w_799/c_crop,g_north_west,h_1051,w_1051,x_-126,y_-178/l_upload:v1507037314:production:blanks:gbajnunp66ec7xftnpq1/fl_layer_apply,g_north_west,x_-231,y_-277/b_rgb:6e2229/c_limit,f_jpg,h_630,q_90,w_630/v1544964897/production/designs/3750637_1.jpg",
  category_id: home.id,
  available: true
})
ron_cleansweep = Item.create({
  name: "Cleansweep 11",
  user_id: ron.id,
  image_url: "https://pm1.narvii.com/6596/161a68a0b51bef8c3e7c96d43c133db3ba1625a8_hq.jpg",
  category_id: sports.id,
  available: true
})
ron_helmet = Item.create({
  name: "Quidditch Helmet",
  user_id: ron.id,
  image_url: "https://images-na.ssl-images-amazon.com/images/I/81U2TaIjvlL._AC_UY445_.jpg",
  category_id: sports.id,
  available: true
})
ginny_ear = Item.create({
  name: "Extendable Ear",
  user_id: ginny.id,
  image_url: "https://i.ebayimg.com/images/g/FBwAAMXQH6BREp6K/s-l640.jpg",
  category_id: toys.id,
  available: true
})
ginny_bomb = Item.create({
  name: "Dung Bombs",
  user_id: ginny.id,
  image_url: "https://static.wikia.nocookie.net/harrypotter/images/0/07/Dung_Bombs_from_Weasleys%27_Wizard_Wheezes.jpg",
  category_id: toys.id,
  available: true
})
ginny_tie = Item.create({
  name: "Gryffindor Tie",
  user_id: ginny.id,
  image_url: "https://static1.funidelia.com/474293-f6_big2/gryffindor-tie-and-pin-pack-deluxe-box-harry-potter.jpg",
  category_id: clothing.id,
  available: true
})
ginny_hair = Item.create({
  name: "Witch I Love Your Hair - Hair Mist",
  user_id: ginny.id,
  image_url: "http://cdn.shopify.com/s/files/1/0913/3614/products/f78b36a279e4c387b915ece8b80c05e6_600x.jpg?v=1571438888",
  category_id: beauty.id,
  available: true
})
ginny_shampoo = Item.create({
  name: "Witch Hazel Shampoo",
  user_id: ginny.id,
  image_url: "https://image.influenster.com/eyJidWNrZXQiOiAiaW5mbHVlbnN0ZXJfcHJvZHVjdGlvbiIsICJrZXkiOiAibWVkaWEvcGhvdG8vaW1hZ2UvbWFya2V0cGxhY2VfcGhvdG9fMTU4NzU3MDgwNDMwNV9aVHlaQ29XLmpwZyIsICJlZGl0cyI6IHsicmVzaXplIjogeyJ3aWR0aCI6IDM1NSwgImhlaWdodCI6IDM1NSwgImZpdCI6ICJpbnNpZGUiLCAiYmFja2dyb3VuZCI6IHsiciI6IDEsICJnIjogMSwgImIiOiAxLCAiYWxwaGEiOiAwfSwgIndpdGhvdXRFbmxhcmdlbWVudCI6IHRydWV9fSwgImV4dGVuZCI6IHt9fQ==",
  category_id: beauty.id,
  available: true
})
neville_remem = Item.create({
  name: "Remembrall",
  user_id: neville.id,
  image_url: "https://i.pinimg.com/originals/08/ba/f3/08baf3f837f4334620f7776390d897e1.jpg",
  category_id: other.id,
  available: false
})

# ItemTags ----------------------------------------------------------
ItemTag.create([
  { item_id: harry_nimbus.id, tag_id: t_brooms.id },
  { item_id: harry_nimbus.id, tag_id: t_quidditch.id },
  { item_id: harry_set.id, tag_id: t_quidditch.id },
  { item_id: harry_scarf.id, tag_id: t_gryffindor.id },
  { item_id: harry_scarf.id, tag_id: t_school.id },
  { item_id: harry_scarf.id, tag_id: t_uniform.id },
  { item_id: harry_owl.id, tag_id: t_treats.id },
  { item_id: harry_book.id, tag_id: t_nonfiction.id },
  { item_id: harry_book.id, tag_id: t_quidditch.id },
  { item_id: hermione_book.id, tag_id: t_hogwarts.id },
  { item_id: hermione_book.id, tag_id: t_school.id },
  { item_id: hermione_book.id, tag_id: t_nonfiction.id },
  { item_id: hermione_movie.id, tag_id: t_harry.id },
  { item_id: hermione_movie.id, tag_id: t_meta.id },
  { item_id: hermione_movie.id, tag_id: t_bluray.id },
  { item_id: hermione_game.id, tag_id: t_board.id },
  { item_id: hermione_game.id, tag_id: t_multiplayer.id },
  { item_id: hermione_quill.id, tag_id: t_school.id },
  { item_id: hermione_quill.id, tag_id: t_office.id },
  { item_id: hermione_quill.id, tag_id: t_writing.id },
  { item_id: hermione_quill.id, tag_id: t_new.id },
  { item_id: ron_pillow.id, tag_id: t_bedding.id },
  { item_id: ron_pillow.id, tag_id: t_decor.id },
  { item_id: ron_pillow.id, tag_id: t_quidditch.id },
  { item_id: ron_cleansweep.id, tag_id: t_quidditch.id },
  { item_id: ron_cleansweep.id, tag_id: t_brooms.id },
  { item_id: ron_helmet.id, tag_id: t_quidditch.id },
  { item_id: ron_helmet.id, tag_id: t_hats.id },
  { item_id: ginny_ear.id, tag_id: t_pranks.id },
  { item_id: ginny_ear.id, tag_id: t_spying.id },
  { item_id: ginny_ear.id, tag_id: t_zonko.id },
  { item_id: ginny_bomb.id, tag_id: t_pranks.id },
  { item_id: ginny_tie.id, tag_id: t_school.id },
  { item_id: ginny_tie.id, tag_id: t_uniform.id },
  { item_id: ginny_tie.id, tag_id: t_gryffindor.id },
  { item_id: ginny_hair.id, tag_id: t_hair.id },
  { item_id: ginny_hair.id, tag_id: t_hairspray.id },
  { item_id: ginny_shampoo.id, tag_id: t_hair.id },
  { item_id: ginny_shampoo.id, tag_id: t_shampoo.id },
])

# BorrowRequests ----------------------------------------------------
BorrowRequest.create([
  {
    requestor_id: harry.id,
    item_id: hermione_movie.id,
    status: "accepted",
    read: true
  },
  {
    requestor_id: harry.id,
    item_id: neville_remem.id,
    status: "accepted",
    read: true
  },
  {
    requestor_id: ron.id,
    item_id: harry_nimbus.id,
    status: "accepted",
    read: true
  },
  {
    requestor_id: ron.id,
    item_id: hermione_movie.id,
    status: "pending",
    read: true
  },
  {
    requestor_id: harry.id,
    item_id: ron_pillow.id,
    status: "pending",
    read: false
  },
  {
    requestor_id: parvati.id,
    item_id: hermione_game.id,
    status: "pending",
    read: false
  },
])