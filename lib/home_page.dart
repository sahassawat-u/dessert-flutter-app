import 'package:dessert_app/dessert_card.dart';
import 'package:dessert_app/category.dart';
import 'package:dessert_app/data/dessert_data.dart';
import 'package:dessert_app/widgets/search.dart';
import 'package:flutter/material.dart';

import 'models/dessert.dart';

enum DessertEnum {
  cake,
  cookie,
  iceCream,
  pancake,
  waffle,
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  DessertEnum? which;
  int? selectedIndex;
  String query = "";
  late List<Dessert> desserts;
  //
  @override
  void initState() {
    super.initState();
    desserts = allDesserts;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // color: Colors.green.withOpacity(0.5),
        padding: EdgeInsets.only(top: 70, left: 30, right: 40),
        child: Column(
          children: [
            Row(
              children: [
                const Icon(
                  Icons.menu,
                  size: 25,
                  color: Colors.grey,
                ),
                Expanded(child: Container()),
                // Expanded(child: w)
                const Icon(
                  Icons.notifications_outlined,
                  size: 25,
                  color: Colors.grey,
                  // color: Colors.,
                ),
              ],
            ),
            const SizedBox(height: 50),
            Row(
              children: [
                Text(
                  "Welcome to ...",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey[400],
                    // fontFamily: ''
                  ),
                )
              ],
            ),
            Row(
              children: [
                Text(
                  "What do you want \nto cook today ?",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.grey[600],
                    fontWeight: FontWeight.w500,
                    // fontFamily: ''
                  ),
                  textAlign: TextAlign.start,
                )
              ],
            ),
            const SizedBox(height: 20),
            SearchWidget(
              text: query,
              onChanged: searchDessert,
              hintText: "Search your dessert",
            ),
            const SizedBox(height: 10),
            Container(
              height: 50,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Category(
                    text_: "Cakes",
                    onPressed_: () {
                      setState(() {
                        which = DessertEnum.cake;
                      });
                    },
                    color_: which == DessertEnum.cake
                        ? const Color(0xfff5cc82)
                        : Colors.grey.shade500,
                    ballColor: which == DessertEnum.cake
                        ? const Color(0xfff5cc82)
                        : Colors.white,
                  ),
                  Category(
                    text_: "Cookies",
                    onPressed_: () {
                      setState(() {
                        which = DessertEnum.cookie;
                      });
                    },
                    color_: which == DessertEnum.cookie
                        ? const Color(0xfff5cc82)
                        : Colors.grey.shade500,
                    ballColor: which == DessertEnum.cookie
                        ? const Color(0xfff5cc82)
                        : Colors.white,
                  ),
                  Category(
                    text_: "Ice Cream",
                    onPressed_: () {
                      setState(() {
                        which = DessertEnum.iceCream;
                      });
                    },
                    color_: which == DessertEnum.iceCream
                        ? const Color(0xfff5cc82)
                        : Colors.grey.shade500,
                    ballColor: which == DessertEnum.iceCream
                        ? const Color(0xfff5cc82)
                        : Colors.white,
                  ),
                  Category(
                    text_: "Pancakes",
                    onPressed_: () {
                      setState(() {
                        which = DessertEnum.pancake;
                      });
                    },
                    color_: which == DessertEnum.pancake
                        ? const Color(0xfff5cc82)
                        : Colors.grey.shade500,
                    ballColor: which == DessertEnum.pancake
                        ? const Color(0xfff5cc82)
                        : Colors.white,
                  ),
                  Category(
                    text_: "Waffles",
                    onPressed_: () {
                      setState(() {
                        which = DessertEnum.waffle;
                      });
                    },
                    color_: which == DessertEnum.waffle
                        ? const Color(0xfff5cc82)
                        : Colors.grey.shade500,
                    ballColor: which == DessertEnum.waffle
                        ? const Color(0xfff5cc82)
                        : Colors.white,
                  ),
                ],
                // ),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Text(
                  "Popular Recipes",
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.grey,
                  ),
                  textAlign: TextAlign.start,
                )
              ],
            ),
            const SizedBox(height: 30),
            Container(
              height: 300,
              child: PageView.builder(
                onPageChanged: (index) {
                  setState(() {
                    selectedIndex = index;
                  });
                },
                controller: PageController(viewportFraction: 0.7),
                padEnds: false,
                itemCount: desserts.length,
                itemBuilder: (context, index) {
                  var dessert_ = desserts[index];
                  var _scale = selectedIndex == index ? 1.0 : 0.8;
                  return TweenAnimationBuilder(
                    duration: const Duration(milliseconds: 350),
                    tween: Tween(begin: _scale, end: _scale),
                    curve: Curves.ease,
                    child: DessertCard(
                      dessert: dessert_,
                    ),
                    builder:
                        (BuildContext context, double value, Widget? child) {
                      return Transform.scale(
                        scale: value,
                        child: child,
                      );
                    },
                  );
                },
              ),
            ),
            Expanded(child: Container()),
            Container(
              margin: EdgeInsets.only(bottom: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    // alignment: Alignment.center,
                    padding: EdgeInsets.all(10),

                    width: 110,
                    margin: EdgeInsets.only(right: 30),
                    decoration: BoxDecoration(
                      color: Color(0xfff5cc82),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    // color: Colors.redAccent,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          Icons.home_outlined,
                          color: Colors.white,
                          size: 30,
                        ),
                        Text(
                          "Home",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Icon(
                    Icons.favorite_outline,
                    color: Colors.grey,
                  ),
                  // SizedBox(width: 30),
                  Icon(
                    Icons.search,
                    color: Colors.grey,
                  ),
                  // SizedBox(width: 30),
                  Icon(
                    Icons.person_outlined,
                    color: Colors.grey,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void searchDessert(String query) {
    print(query);
    final desserts = allDesserts.where((dessert) {
      final nameLower = dessert.name.toLowerCase();
      final searchLower = query.toLowerCase();
      return nameLower.contains(searchLower);
    }).toList();
    setState(() {
      this.query = query;
      this.desserts = desserts;
    });
  }
}
