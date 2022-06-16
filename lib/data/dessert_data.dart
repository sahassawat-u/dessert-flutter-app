import 'package:dessert_app/models/dessert.dart';
import 'package:dessert_app/models/ingredient.dart';
import 'package:dessert_app/pages/home_page.dart';
import 'package:flutter/material.dart';

final allDesserts = <Dessert>[
  Dessert(
    name: "Buttermilk Pancakes",
    type: DessertEnum.pancake,
    imgUrl:
        "https://www.pngall.com/wp-content/uploads/5/Buttermilk-Pancake-PNG-Picture.png",
    // "https://www.pngall.com/wp-content/uploads/5/Buttermilk-Pancake-PNG-Image.png",
    prepTime: 5,
    cookTime: 15,
    serving: "16 pieces",
    lvl: "Easy",
// F4CE9E
    color: const Color(0xffF4CE9E),
    step: """○ Preheat your griddle to a medium high heat.
○ In a large bowl, whisk your dry ingredients together.
○ Mix the lemon juice into the water, then add the water to the buttermilk.
○ Beat your eggs, then add them into the buttermilk mixture as well. Mix in the
melted butter and stir until everything is combined.
○ Make a well in the dry ingredients and slowly pour the liquid ingredients in. Mix
until just combined, making sure however that there are no lumps in the batter.
○ On a well greasedd griddle. pour then spread out the batter to make circle shapes.
When the top of the cooking pancake is bubbled, the underside is a golden brown
and the edges cooked, flip them over.
""",
    ingredients: <Ingredient>[
      Ingredient(
          imgUrl:
              "https://media.istockphoto.com/photos/one-egg-isolated-on-white-background-picture-id479882154?k=20&m=479882154&s=612x612&w=0&h=DDK5IETcAVh52eAGiP0Px_EsVUxBQ4r_J36QEJCYuV8=",
          measure: "Eggs"),
      Ingredient(
          imgUrl:
              "https://thumbs.dreamstime.com/b/plain-all-purpose-flour-presented-american-cup-measure-28933684.jpg",
          measure: "Flour"),
      Ingredient(
          imgUrl:
              "https://img.freepik.com/free-photo/pouring-glass-milk-creating-splash-white-background-from-top-view_45716-42.jpg",
          measure: "Milk"),
      Ingredient(
          imgUrl:
              "https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fstatic.onecms.io%2Fwp-content%2Fuploads%2Fsites%2F43%2F2020%2F12%2F07%2FGettyImages-1059394548-2000.jpg&q=60",
          measure: "Baking powder"),
      Ingredient(
          imgUrl:
              "https://img.freepik.com/free-photo/butter-white-background_62856-1262.jpg",
          measure: "Butter"),
    ],
  ),
  Dessert(
    name: "Old-Fashioned Ice Cream Banana Split",
    type: DessertEnum.iceCream,
    imgUrl:
        "https://pngroyale.com/wp-content/uploads/2022/02/Banana-Split-PNG-Pic.png",
    prepTime: 5,
    cookTime: 15,
    serving: "1 serving",
    lvl: "Easy",
    color: const Color(0xff9ED6D5),
    step:
        """○ Peel then slice a banana in half lengthwise. You don't want to do this too far ahead of time or they will brown.
○ Place one piece of the banana on each side of the banana boat dish.
○ Place a scoop of vanilla, chocolate and then strawberry ice cream between the banana pieces as shown. Alternatively you can place the ice cream right on top of the banana slices, the choice is up to you.
○ Place the crushed pineapple on top of the vanilla ice cream.
○ Place the strawberry syrup or strawberry compote on top of the strawberry ice cream.
○ Place chocolate syrup on top of the chocolate ice cream.
○ Top each ice cream scoop with whipped cream.
○ Place three maraschino cherries on top, one in each whipped cream pile.
○ Sprinkle with peanuts or walnuts.""",
    ingredients: <Ingredient>[
      Ingredient(
          imgUrl: "https://s3.envato.com/files/336211055/2971_10_.jpg",
          measure: "Banana"),
      Ingredient(
          imgUrl:
              "https://thumbs.dreamstime.com/b/whipped-cream-white-background-39504854.jpg",
          measure: "Whipped cream"),
      Ingredient(
          imgUrl:
              "https://media.istockphoto.com/photos/fruit-maraschino-cherries-isolated-on-white-background-picture-id1198670797?k=20&m=1198670797&s=170667a&w=0&h=ihBD9ltICjxQ5M01PuPP2eEgOFrHxc8FemZcNo2jEVY=",
          measure: "Maraschino cherries"),
      Ingredient(
          imgUrl:
              "https://thumbs.dreamstime.com/b/chocolate-ice-cream-white-background-isolated-149594014.jpg",
          measure: "Chocolate ice cream"),
      Ingredient(
          imgUrl:
              "https://thumbs.dreamstime.com/b/vanilla-ice-cream-ceramic-cup-isolated-white-background-162796814.jpg",
          measure: "Vanilla ice cream"),
      Ingredient(
          imgUrl:
              "https://spicecravings.com/wp-content/uploads/2020/02/Strawberry-Jam-5.jpg",
          measure: "Strawberry jam"),
    ],
  ),
  Dessert(
    name: "Red Velvet Cake",
    type: DessertEnum.cake,
    imgUrl:
        "https://images.squarespace-cdn.com/content/v1/538500e4e4b0fa9e95efc7b9/1627658152227-GD7J9FR0F7005TFL16JQ/Red+Velvet+Baby+Cake+Montage.png?format=2500w",
    prepTime: 5,
    cookTime: 25,
    serving: "4 servings",
    lvl: "Easy",
    color: const Color(0xffFE5F5F),
    step:
        """○ Combine all of the ingredients into a large bowl, mixing until all the lumps disappear
○ If the batter is too thick, add more milk
○ The batter should still be spreadable, though, thinner than a normal pancake batter
○ Preheat your griddle to a medium-high temperature
○ Measure out ¼ cup sized scoops of cake batter and cook until browned on the bottom slightly and flip and cook until the other side is done
○ Combine the cream cheese icing ingredients together using beats, adapting with more milk and cream as desired
○ Serve the cake topping with the cream cheese icing, or even some syrup as well!
""",
    ingredients: <Ingredient>[
      Ingredient(
          imgUrl:
              "https://thumbs.dreamstime.com/b/bottle-vanilla-extract-sticks-bottle-vanilla-extract-sticks-white-background-108069318.jpg",
          measure: "Sweet vanilla"),
      Ingredient(
          imgUrl:
              "https://media.istockphoto.com/photos/one-egg-isolated-on-white-background-picture-id479882154?k=20&m=479882154&s=612x612&w=0&h=DDK5IETcAVh52eAGiP0Px_EsVUxBQ4r_J36QEJCYuV8=",
          measure: "eggs"),
      Ingredient(
          imgUrl:
              "https://img.freepik.com/free-photo/pouring-glass-milk-creating-splash-white-background-from-top-view_45716-42.jpg",
          measure: "Milk"),
      Ingredient(
          imgUrl:
              "https://thumbs.dreamstime.com/b/plain-all-purpose-flour-presented-american-cup-measure-28933684.jpg",
          measure: "All-purpose flour"),
      Ingredient(
          imgUrl:
              "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f7/Philly_cream_cheese.jpg/1200px-Philly_cream_cheese.jpg",
          measure: "Cream cheese"),
      Ingredient(
          imgUrl:
              "https://img.freepik.com/free-photo/butter-white-background_62856-1262.jpg",
          measure: "Butter"),
    ],
  ),
  Dessert(
    name: "Triple Berry Pancakes",
    type: DessertEnum.pancake,
    imgUrl:
        "https://www.downloadclipart.net/large/pancakes-transparent-background.png",
    prepTime: 5,
    cookTime: 15,
    serving: "9 servings",
    lvl: "Easy",
    color: const Color(0xffA5AAC2),
    step:
        """○ Heat griddle or skillet over medium heat or electric griddle to 300°F (grease if necessary).
○ Stir all ingredients except powdered sugar until blended. Pour by slightly less than 1/4 cupfuls onto hot griddle.
○ Cook about 3 minutes on each side, turning once, until golden (watch closely--pancakes brown quickly). Sprinkle with powdered sugar or serve with syrup.""",
    ingredients: <Ingredient>[
      Ingredient(
          imgUrl:
              "https://cdn.shopify.com/s/files/1/0435/2304/7581/products/TripleBerryBlend_cue_420x352.jpg?v=1608222836",
          measure: "Triple berry"),
      Ingredient(
          imgUrl:
              "https://thumbs.dreamstime.com/b/plain-all-purpose-flour-presented-american-cup-measure-28933684.jpg",
          measure: "All-purpose flour"),
      Ingredient(
          imgUrl:
              "https://media.istockphoto.com/photos/one-egg-isolated-on-white-background-picture-id479882154?k=20&m=479882154&s=612x612&w=0&h=DDK5IETcAVh52eAGiP0Px_EsVUxBQ4r_J36QEJCYuV8=",
          measure: "Eggs"),
      Ingredient(
          imgUrl:
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSjY9wNapsQaTTox-wRcvgjN_MRZpKO4QnoRg&usqp=CAU",
          measure: "Vegetable oil"),
      Ingredient(
          imgUrl:
              "https://img.freepik.com/free-photo/pouring-glass-milk-creating-splash-white-background-from-top-view_45716-42.jpg",
          measure: "Syrup"),
      Ingredient(
          imgUrl:
              "https://img.freepik.com/free-photo/butter-white-background_62856-1262.jpg",
          measure: "Water"),
    ],
  ),
  Dessert(
    name: "Chocolate Cake",
    type: DessertEnum.cake,
    imgUrl:
        "https://www.pngmart.com/files/16/Chocolate-Cake-Transparent-PNG.png",
    prepTime: 10,
    cookTime: 35,
    serving: "8 pieces",
    lvl: "Medium",
    color: const Color(0xffC1877A),
    step: """○ Whisk together all of the dry ingredients in a medium bowl
○ Using a stand mixer or hand whisk, beat the eggs with the oil until completely combined, and then add in all of the rest of the wet ingredients
○ Combine the wet and dry ingredients for 2 minutes on low speed
○ Pour the batter into a greased 9×9 square pan and tap lightly on the counter to release trapped air bubbles
○ Bake for 40 minutes at 350 Fahrenheit, or until a cake tester or toothpick inserted into the middle comes out clean
○ Remove, cool for 5 minutes in the pan, and then invert onto a cooling rack
    """,
    ingredients: <Ingredient>[
      Ingredient(
          imgUrl:
              "https://shinjukuhalalfood.com/wp-content/uploads/2020/12/Rice_Powder-removebg-preview.png",
          measure: "Flour"),
      Ingredient(
          imgUrl:
              "https://img.freepik.com/free-photo/cocoa-pods-cocoa-beans-cacao-powder-with-leaves-isolated-white-background_38145-729.jpg",
          measure: "Cocoa"),
      Ingredient(
          imgUrl:
              "https://media.istockphoto.com/photos/one-egg-isolated-on-white-background-picture-id479882154?k=20&m=479882154&s=612x612&w=0&h=DDK5IETcAVh52eAGiP0Px_EsVUxBQ4r_J36QEJCYuV8=",
          measure: "Eggs"),
      Ingredient(
          imgUrl:
              "https://thumbs.dreamstime.com/b/bottle-vanilla-extract-sticks-bottle-vanilla-extract-sticks-white-background-108069318.jpg",
          measure: "Vanilla"),
      Ingredient(
          imgUrl:
              "https://d2gg9evh47fn9z.cloudfront.net/800px_COLOURBOX1608342.jpg",
          measure: "Oil"),
      Ingredient(
          imgUrl:
              "https://thumbs.dreamstime.com/b/whipped-cream-white-background-39504854.jpg",
          measure: "Heavy cream"),
    ],
  ),
  Dessert(
    name: "Blueberry \nBuckle",
    type: DessertEnum.cake,
    imgUrl:
        "https://www.pngkit.com/png/full/106-1063654_blueberry-vanilla-cheesecake-vanilj-o-blbr-cheesecake.png",
    prepTime: 20,
    cookTime: 30,
    serving: "4 servings",
    lvl: "Easy",
    color: const Color(0xff484D6A),
    step: """○ Grease a 9×9 pan and set aside
○ Cream the butter and sugar in a medium-sized bowl until light and fluffy
○ Add in the egg and beat well
○ In a separate bowl, whisk together the flour, baking powder, and salt
○ Add the almond extract into the milk
○ Add half of the dry mixture into the egg and butter and mixture, beating well and then in half of the milk, beating together and then mixing in the rest of the milk
○ Fold in the blueberries carefully
○ Spread into a prepared, greased pan
○ Combine the sugar, flour, and cinnamon in a small bowl
○ Cut in the butter until crumbly using a fork
○ Sprinkle the topping over the batter into an even, crumbly layer
○ Bake at 375 Fahrenheit for 30 minutes, or until a toothpick inserted into the center comes out clean
○ Cool, slice in the pan, and serve topped with whipped cream and more blueberries""",
    ingredients: <Ingredient>[
      Ingredient(
          imgUrl:
              "https://img.freepik.com/free-photo/butter-white-background_62856-1262.jpg",
          measure: "Butter"),
      Ingredient(
          imgUrl:
              "https://media.istockphoto.com/photos/one-egg-isolated-on-white-background-picture-id479882154?k=20&m=479882154&s=612x612&w=0&h=DDK5IETcAVh52eAGiP0Px_EsVUxBQ4r_J36QEJCYuV8=",
          measure: "Egg"),
      Ingredient(
          imgUrl:
              "https://img.freepik.com/free-photo/pouring-glass-milk-creating-splash-white-background-from-top-view_45716-42.jpg",
          measure: "Milk"),
      Ingredient(
          imgUrl:
              "https://thumbs.dreamstime.com/b/pure-almond-extract-isolated-white-background-82278917.jpg",
          measure: "Almond extract"),
      Ingredient(
          imgUrl:
              "https://img.freepik.com/free-photo/blueberry-fruit-white-background_33807-1138.jpg",
          measure: "Blueberries"),
      Ingredient(
          imgUrl:
              "https://thumbs.dreamstime.com/b/plain-all-purpose-flour-presented-american-cup-measure-28933684.jpg",
          measure: "All-purpose flour"),
      Ingredient(
          imgUrl:
              "https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fstatic.onecms.io%2Fwp-content%2Fuploads%2Fsites%2F43%2F2020%2F12%2F07%2FGettyImages-1059394548-2000.jpg&q=60",
          measure: "Baking powder"),
    ],
  ),
  Dessert(
    name: "Cream Cheese Chocolate Chip Cookies",
    type: DessertEnum.cookie,
    imgUrl: "https://pngimg.com/uploads/cookie/cookie_PNG13694.png",
    prepTime: 10,
    cookTime: 10,
    serving: "36 pieces",
    lvl: "Easy",
    color: const Color(0xffE8C773),
    step:
        """○ Beat together the butter, white sugar, brown sugar, and cream cheese
○ Add the egg and vanilla and mix together
○ Whisk together the flour, baking soda, and salt in a separate bowl
○ Add to the wet ingredients, mixing slowly after each addition
○ Mix in the chocolate chips
○ Measure out the cookie batter using a tablespoon onto a parchment-lined cookie sheet
○ Bake at 350 Fahrenheit for 10 minutes, or until the edges are browned and baked
○ Remove and cool""",
    ingredients: <Ingredient>[
      Ingredient(
          imgUrl:
              "https://thumbs.dreamstime.com/b/plain-all-purpose-flour-presented-american-cup-measure-28933684.jpg",
          measure: "Flour"),
      Ingredient(
          imgUrl:
              "https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fstatic.onecms.io%2Fwp-content%2Fuploads%2Fsites%2F43%2F2020%2F12%2F07%2FGettyImages-1059394548-2000.jpg&q=60",
          measure: "Baking soda"),
      Ingredient(
          imgUrl:
              "https://media.istockphoto.com/photos/one-egg-isolated-on-white-background-picture-id479882154?k=20&m=479882154&s=612x612&w=0&h=DDK5IETcAVh52eAGiP0Px_EsVUxBQ4r_J36QEJCYuV8=",
          measure: "Eggs"),
      Ingredient(
          imgUrl:
              "https://thumbs.dreamstime.com/b/bottle-vanilla-extract-sticks-bottle-vanilla-extract-sticks-white-background-108069318.jpg",
          measure: "Vanilla"),
      Ingredient(
          imgUrl:
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRjwfNXwCsa5SmSCC0GyUbd-9bOzTpsDXDmWwV05LQOlil0QPWsIrZbdyJUrukXBFWo7Hg&usqp=CAU",
          measure: "Chocolate chips"),
      Ingredient(
          imgUrl:
              "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f7/Philly_cream_cheese.jpg/1200px-Philly_cream_cheese.jpg",
          measure: "Cream cheese"),
      Ingredient(
          imgUrl:
              "https://img.freepik.com/free-photo/butter-white-background_62856-1262.jpg",
          measure: "Butter"),
    ],
  ),
  Dessert(
    name: "Butterscotch Cookies",
    type: DessertEnum.cookie,
    imgUrl:
        "https://pngroyale.com/wp-content/uploads/2022/02/Cookie-Transparent-Background-PNG-768x513.png",
    prepTime: 10,
    cookTime: 8,
    serving: "36 pieces",
    lvl: "Easy",
    color: const Color(0xffEFAA36),
    step: """○ Mix together all your dry ingredients in a small bowl
○ In a separate bowl, cream together the sugar and butter until completely creamed
○ Add in the vanilla and the eggs, one at a time
○ Slowly add the flour, folding it in with a spatula, and then add the butterscotch chips
○ Put tablespoonful sized dollops onto an ungreased cookie sheet and bake for 8 minutes at 375 Fahrenheit
○ Cool completely on a wire rack
""",
    ingredients: <Ingredient>[
      Ingredient(
          imgUrl:
              "https://img.freepik.com/free-photo/sugar-cubes-bowl-isolated-white-background-view-from_219958-544.jpg",
          measure: "Sugar"),
      Ingredient(
          imgUrl:
              "https://media.istockphoto.com/photos/one-egg-isolated-on-white-background-picture-id479882154?k=20&m=479882154&s=612x612&w=0&h=DDK5IETcAVh52eAGiP0Px_EsVUxBQ4r_J36QEJCYuV8=",
          measure: "Eggs"),
      Ingredient(
          imgUrl:
              "https://img.freepik.com/free-photo/pouring-glass-milk-creating-splash-white-background-from-top-view_45716-42.jpg",
          measure: "Milk"),
      Ingredient(
          imgUrl:
              "https://thumbs.dreamstime.com/b/plain-all-purpose-flour-presented-american-cup-measure-28933684.jpg",
          measure: "All-purpose flour"),
      Ingredient(
          imgUrl:
              "https://thumbs.dreamstime.com/b/butterscotch-baking-chips-white-background-76725500.jpg",
          measure: "Butterscotch chips"),
      Ingredient(
          imgUrl:
              "https://img.freepik.com/free-photo/butter-white-background_62856-1262.jpg",
          measure: "Butter"),
    ],
  ),
  Dessert(
    name: "Banana Waffles",
    type: DessertEnum.waffle,
    imgUrl:
        "https://i.pinimg.com/originals/9e/7d/dc/9e7ddcd13d3ea8439f8bee1063a7ee97.png",
    prepTime: 5,
    cookTime: 20,
    serving: "12 pieces",
    lvl: "Easy",
    color: const Color(0xffF4CE9E),
    step:
        """○ Whisk the flour, sugar, baking powder, baking soda, salt, cinnamon, and nutmeg together in a large bowl
○ In a large measuring cup, mix the milk, bananas, eggs, vegetable oil, and vanilla.
○ Make a well in the middle of the dry ingredients and pour the wet ingredients in and stir until combined
○ Use your favorite waffle maker to make the waffles, following the instructions closely
○ Cook the waffles until they are golden brown and crisp
○ Top with whipped cream, bananas, and syrup""",
    ingredients: <Ingredient>[
      Ingredient(
          imgUrl:
              "https://img.freepik.com/free-photo/wheat-flour-wheat-bars-white-background_320146-63.jpg",
          measure: "Wheat flour"),
      Ingredient(
          imgUrl:
              "https://media.istockphoto.com/photos/one-egg-isolated-on-white-background-picture-id479882154?k=20&m=479882154&s=612x612&w=0&h=DDK5IETcAVh52eAGiP0Px_EsVUxBQ4r_J36QEJCYuV8=",
          measure: "Eggs"),
      Ingredient(
          imgUrl: "https://s3.envato.com/files/336211055/2971_10_.jpg",
          measure: "Banana"),
      Ingredient(
          imgUrl:
              "https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fstatic.onecms.io%2Fwp-content%2Fuploads%2Fsites%2F43%2F2020%2F12%2F07%2FGettyImages-1059394548-2000.jpg&q=60",
          measure: "Baking powder"),
      Ingredient(
          imgUrl:
              "https://img.freepik.com/free-photo/pouring-glass-milk-creating-splash-white-background-from-top-view_45716-42.jpg",
          measure: "Milk"),
      Ingredient(
          imgUrl:
              "https://t3.ftcdn.net/jpg/02/43/69/04/360_F_243690485_yK28LyuSs9vzwzE8LuYfHEUBCtxboOlc.jpg",
          measure: "Cinnamon"),
      Ingredient(
          imgUrl:
              "https://media.istockphoto.com/photos/red-apple-sliced-isolated-on-white-picture-id1255668886?k=20&m=1255668886&s=170667a&w=0&h=lUcLxr83J-QYPClo9yu8RG1YNffWpddDyy_M44RsnFc=",
          measure: "Shredded apple"),
    ],
  ),
  Dessert(
    name: "Classic Buttermilk Waffles",
    type: DessertEnum.waffle,
    imgUrl:
        "https://www.pngall.com/wp-content/uploads/5/Waffle-PNG-Image-HD.png",
    prepTime: 10,
    cookTime: 20,
    serving: "4 waffles",
    lvl: "Easy",
    color: const Color(0xffF09338),
    step: """○ Whisk together all of the dry ingredients in a large bowl
○ Milk the buttermilk and melted butter together in a large measuring cup
○ Add in the beaten egg and vanilla extract and then stir them together
○ Pour the buttermilk mixture into the flour mixture
○ Whisk until combined – the batter should be lumpy but still pourable
○ Preheat your waffle iron
○ Once hot, pour the batter into the waffle iron according to the manufacturer's instructions
○ Follow the waffle iron’s settings to result in a medium brown waffle""",
    ingredients: <Ingredient>[
      Ingredient(
          imgUrl:
              "https://thumbs.dreamstime.com/b/plain-all-purpose-flour-presented-american-cup-measure-28933684.jpg",
          measure: "Flour"),
      Ingredient(
          imgUrl:
              "https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fstatic.onecms.io%2Fwp-content%2Fuploads%2Fsites%2F43%2F2020%2F12%2F07%2FGettyImages-1059394548-2000.jpg&q=60",
          measure: "Baking powder"),
      Ingredient(
          imgUrl:
              "https://media.istockphoto.com/photos/one-egg-isolated-on-white-background-picture-id479882154?k=20&m=479882154&s=612x612&w=0&h=DDK5IETcAVh52eAGiP0Px_EsVUxBQ4r_J36QEJCYuV8=",
          measure: "Eggs"),
      Ingredient(
          imgUrl:
              "https://img.freepik.com/free-photo/sugar-cubes-bowl-isolated-white-background-view-from_219958-544.jpg",
          measure: "Sugar"),
      Ingredient(
          imgUrl:
              "https://thumbs.dreamstime.com/b/glass-fresh-organic-buttermilk-isoloated-white-background-glass-fresh-buttermilk-126547324.jpg",
          measure: "Buttermilk"),
    ],
  ),
  Dessert(
    name: "Homemade Strawberry Ice Cream",
    type: DessertEnum.iceCream,
    imgUrl:
        "https://www.hersheyicecream.com/products/images/lighter-side/rfnsa-strawberry-scoop2.png",
    prepTime: 10,
    cookTime: 25,
    serving: "3 cups",
    lvl: "Easy",
    color: const Color(0xffF2CDDF),
    step:
        """○ In a large bowl, mix strawberries, honey, sugar, and lemon juice. Allow to sit 15-20 minutes, or until the strawberries have released their juices.
○ Mash the mixture with a potato masher, fork, or pastry cutter until there are no longer any large strawberry pieces (if you prefer a smooth ice cream, use a blender or food processor instead*).
○ To the strawberries, mix heavy cream, half and half, and vanilla extract. Stir just until combined.
○ Pour the mixture into your ice cream maker, and follow your manufacturer's instructions. 
❥ You can eat the ice cream soft-serve, or freeze it in an airtight container for 3-4 hours to thicken it up slightly. For best results, allow the ice cream to sit at room temperature for about 5-10 minutes to soften before serving.""",
    ingredients: <Ingredient>[
      Ingredient(
          imgUrl:
              "https://media.istockphoto.com/photos/strawberry-with-sliced-half-isolated-on-white-background-picture-id876503894?k=20&m=876503894&s=170667a&w=0&h=90ftdDaJO4Ze2YgL0MTdMSykrpCUBkFTgdsx0WcdCIk=",
          measure: "Strawberries"),
      Ingredient(
          imgUrl:
              "https://media.istockphoto.com/photos/honey-picture-id155308208?k=20&m=155308208&s=612x612&w=0&h=ATkSXWzJnPnACsv7yIDFDRJ6Y33fSOSjNZLqhlpoJ8k=",
          measure: "Honey"),
      Ingredient(
          imgUrl:
              "https://thumbs.dreamstime.com/b/heap-granulated-sugar-cube-isolated-white-background-top-view-flat-lay-heap-granulated-sugar-cube-isolated-109350241.jpg",
          measure: "Granulated sugar"),
      Ingredient(
          imgUrl:
              "https://thumbs.dreamstime.com/b/whipped-cream-white-background-39504854.jpg",
          measure: "Whipping cream"),
      Ingredient(
          imgUrl:
              "https://thumbs.dreamstime.com/b/bottle-vanilla-extract-sticks-bottle-vanilla-extract-sticks-white-background-108069318.jpg",
          measure: "Vanilla extract"),
    ],
  ),
];
