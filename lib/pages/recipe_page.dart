import 'package:dessert_app/models/dessert.dart';
import 'package:flutter/material.dart';

import '../widgets/ingredient.dart';

class RecipePage extends StatelessWidget {
  RecipePage({required this.dessert});
  final Dessert dessert;
  final List<String> items = ['apple', 'banana', 'orange', 'lemon'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
          children: <Widget>[
            Stack(
              children: [
                Container(
                  height: 120,
                  margin: EdgeInsets.only(top: 430),
                  color: Colors.grey[100],
                  padding: EdgeInsets.only(
                    left: 20,
                    right: 20,
                    bottom: 20,
                    top: 40,
                  ),
                  // margin: EdgeInsets.only(top: 15),
                  // padding: EdgeInsets.all(20),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: Column(
                          children: [
                            Icon(Icons.access_alarms),
                            SizedBox(
                              height: 8,
                            ),
                            Text(dessert.time),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Column(
                          children: [
                            Icon(Icons.person_outlined),
                            SizedBox(
                              height: 8,
                            ),
                            Text(dessert.serving.toString() + " servings"),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Column(
                          children: [
                            Icon(Icons.emoji_objects_outlined),
                            SizedBox(
                              height: 8,
                            ),
                            Text(dessert.lvl),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 450,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: dessert.color,
                  ),
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.only(
                          left: 30,
                          top: 70,
                          right: 40,
                        ),
                        child: Row(
                          children: [
                            IconButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                icon: Icon(Icons.arrow_back_ios)),
                            // Icon(Icons.arrow_back_ios),
                            Expanded(child: Container()),
                            Icon(Icons.favorite_outline),
                          ],
                        ),
                      ),
                      Container(
                        height: 240,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(dessert.imgUrl),
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 40),
                        width: MediaQuery.of(context).size.width,
                        child: Text(
                          dessert.name,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.w500),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 300,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.only(left: 40),
                      width: MediaQuery.of(context).size.width,
                      child: const Text(
                        "Ingredients",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 15),
                      height: 60.0,
                      child: ListView.builder(
                        physics: ClampingScrollPhysics(),
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: 5,
                        itemBuilder: (BuildContext context, int index) =>
                            Ingredient(),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 40, top: 10),
                      width: MediaQuery.of(context).size.width,
                      child: const Text(
                        "Description",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 40, top: 20),
                      child: Text(
                        """Preheat the oven to 350 degrees F. Lightly oil and flour three 9 by 1 1/2-inch round cake pans.
In a large bowl, sift together the flour, sugar, baking soda, salt, and cocoa powder. In another large bowl, whisk together the oil, buttermilk, eggs, food coloring, vinegar, and vanilla.
Using a standing mixer, mix the dry ingredients into the wet ingredients until just combined and a smooth batter is formed.
Divide the cake batter evenly among the prepared cake pans. Place the pans in the oven evenly spaced apart. Bake, rotating the pans halfway through the cooking, until the cake pulls away from the side of the pans, and a toothpick inserted in the center of the cakes comes out clean, about 30 minutes.
Remove the cakes from the oven and run a knife around the edges to loosen them from the sides of the pans. One at a time, invert the cakes onto a plate and then re-invert them onto a cooling rack, rounded-sides up. Let cool completely.
Frost the cake. Place 1 layer, rounded-side down, in the middle of a rotating cake stand. Using a palette knife or offset spatula spread some of the Cream Cheese Frosting over the top of the cake. (Spread enough frosting to make a 1/4 to 1/2-inch layer.) Carefully set another layer on top, rounded-side down, and repeat. Top with the remaining layer and cover the entire cake with the remaining frosting. Sprinkle the top with the pecans.
Cream Cheese Frosting:
Yield: enough to frost a 3 layer (9-inch) cake
In a standing mixer fitted with the paddle attachment, or with a hand-held electric mixer in a large bowl, mix the cream cheese, sugar, and butter on low speed until incorporated. Increase the speed to high, and mix until light and fluffy, about 5 minutes. (Occasionally turn the mixer off, and scrape the down the sides of the bowl with a rubber spatula.)
Reduce the speed of the mixer to low. Add the vanilla, raise the speed to high and mix briefly until fluffy (scrape down the bowl occasionally). Store in the refrigerator until somewhat stiff, before using. May be stored in the refrigerator for 3 days.
                    """,
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
//             Expanded(
//               child: ListView(
//                 padding: EdgeInsets.only(bottom: 10),
//                 children: <Widget>[
//                   Container(
//                     padding: const EdgeInsets.only(left: 40),
//                     width: MediaQuery.of(context).size.width,
//                     child: const Text(
//                       "Ingredients",
//                       style: TextStyle(
//                         fontSize: 18,
//                         fontWeight: FontWeight.w500,
//                       ),
//                     ),
//                   ),
//                   ListView.builder(
//                       // scrollDirection: Axis.horizontal,
//                       shrinkWrap: true,
//                       physics: ClampingScrollPhysics(),
//                       itemCount: 5,
//                       itemBuilder: (BuildContext context, int index) {
//                         return Ingredient();
//                       }),
//
//                   Container(
//                     padding: const EdgeInsets.only(left: 40, top: 20),
//                     child: Text(
//                       """Preheat the oven to 350 degrees F. Lightly oil and flour three 9 by 1 1/2-inch round cake pans.
// In a large bowl, sift together the flour, sugar, baking soda, salt, and cocoa powder. In another large bowl, whisk together the oil, buttermilk, eggs, food coloring, vinegar, and vanilla.
// Using a standing mixer, mix the dry ingredients into the wet ingredients until just combined and a smooth batter is formed.
// Divide the cake batter evenly among the prepared cake pans. Place the pans in the oven evenly spaced apart. Bake, rotating the pans halfway through the cooking, until the cake pulls away from the side of the pans, and a toothpick inserted in the center of the cakes comes out clean, about 30 minutes.
// Remove the cakes from the oven and run a knife around the edges to loosen them from the sides of the pans. One at a time, invert the cakes onto a plate and then re-invert them onto a cooling rack, rounded-sides up. Let cool completely.
// Frost the cake. Place 1 layer, rounded-side down, in the middle of a rotating cake stand. Using a palette knife or offset spatula spread some of the Cream Cheese Frosting over the top of the cake. (Spread enough frosting to make a 1/4 to 1/2-inch layer.) Carefully set another layer on top, rounded-side down, and repeat. Top with the remaining layer and cover the entire cake with the remaining frosting. Sprinkle the top with the pecans.
// Cream Cheese Frosting:
// Yield: enough to frost a 3 layer (9-inch) cake
// In a standing mixer fitted with the paddle attachment, or with a hand-held electric mixer in a large bowl, mix the cream cheese, sugar, and butter on low speed until incorporated. Increase the speed to high, and mix until light and fluffy, about 5 minutes. (Occasionally turn the mixer off, and scrape the down the sides of the bowl with a rubber spatula.)
// Reduce the speed of the mixer to low. Add the vanilla, raise the speed to high and mix briefly until fluffy (scrape down the bowl occasionally). Store in the refrigerator until somewhat stiff, before using. May be stored in the refrigerator for 3 days.
//                     """,
//                       style: TextStyle(
//                         fontSize: 16,
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
          ],
        ),
      ),
    );
  }
}
