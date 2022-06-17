import 'package:dessert_app/pages/recipe_page.dart';
import 'package:dessert_app/widgets/dessert_card.dart';
import 'package:dessert_app/widgets/category.dart';
import 'package:dessert_app/data/dessert_data.dart';
import 'package:dessert_app/widgets/search.dart';
import 'package:flutter/material.dart';

import '../models/dessert.dart';

enum DessertEnum {
  CAKE,
  COOKIE,
  ICECREAM,
  PANCAKE,
  WAFFLE,
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  DessertEnum? which;
  int selectedIndex = 0;
  String query = "";
  late List<Dessert> desserts;
  // for cuteness (heart icon)
  bool isFavClicked = false;
  @override
  void initState() {
    super.initState();
    desserts = allDesserts;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: const EdgeInsets.only(top: 70, left: 30, right: 40),
        child: Column(
          children: [
            Row(
              children: [
                const Icon(
                  Icons.menu,
                  size: 25,
                  color: Colors.grey,
                ),
                // or  mainAxisAlignment space between
                Expanded(child: Container()),
                const Icon(
                  Icons.notifications_outlined,
                  size: 25,
                  color: Colors.grey,
                ),
              ],
            ),
            const SizedBox(height: 50),
            Row(
              children: [
                Text(
                  "Welcome to Dessert Bar",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey.shade500,
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
                    color: Colors.grey[700],
                    fontWeight: FontWeight.w500,
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
            SizedBox(
              height: 50,
              child: ListView(
                // user builder instead
                scrollDirection: Axis.horizontal,
                children: [
                  CategoryWidget(
                    text_: "Cakes",
                    onPressed_: () {
                      if (which == DessertEnum.CAKE) {
                        setState(() {
                          which = null;
                          desserts = allDesserts;
                        });
                      } else {
                        setState(() {
                          which = DessertEnum.CAKE;
                        });
                        selectCategory(which!);
                      }
                    },
                    color_: which == DessertEnum.CAKE
                        ? const Color(0xfff56093)
                        : Colors.grey.shade500,
                    ballColor: which == DessertEnum.CAKE
                        ? const Color(0xfff56093)
                        : Colors.white,
                  ),
                  CategoryWidget(
                    text_: "Cookies",
                    onPressed_: () {
                      if (which == DessertEnum.COOKIE) {
                        setState(() {
                          which = null;
                          desserts = allDesserts;
                        });
                      } else {
                        setState(() {
                          which = DessertEnum.COOKIE;
                        });
                        selectCategory(which!);
                      }
                    },
                    color_: which == DessertEnum.COOKIE
                        ? const Color(0xfff56093)
                        : Colors.grey.shade500,
                    ballColor: which == DessertEnum.COOKIE
                        ? const Color(0xfff56093)
                        : Colors.white,
                  ),
                  CategoryWidget(
                    text_: "Ice Cream",
                    onPressed_: () {
                      if (which == DessertEnum.ICECREAM) {
                        setState(() {
                          which = null;
                          desserts = allDesserts;
                        });
                      } else {
                        setState(() {
                          which = DessertEnum.ICECREAM;
                        });
                        selectCategory(which!);
                      }
                    },
                    color_: which == DessertEnum.ICECREAM
                        ? const Color(0xfff56093)
                        : Colors.grey.shade500,
                    ballColor: which == DessertEnum.ICECREAM
                        ? const Color(0xfff56093)
                        : Colors.white,
                  ),
                  CategoryWidget(
                    text_: "Pancakes",
                    onPressed_: () {
                      if (which == DessertEnum.PANCAKE) {
                        setState(() {
                          which = null;
                          desserts = allDesserts;
                        });
                      } else {
                        setState(() {
                          which = DessertEnum.PANCAKE;
                        });
                        selectCategory(which!);
                      }
                    },
                    color_: which == DessertEnum.PANCAKE
                        ? const Color(0xfff56093)
                        : Colors.grey.shade500,
                    ballColor: which == DessertEnum.PANCAKE
                        ? const Color(0xfff56093)
                        : Colors.white,
                  ),
                  CategoryWidget(
                    text_: "Waffles",
                    onPressed_: () {
                      if (which == DessertEnum.WAFFLE) {
                        setState(() {
                          which = null;
                          desserts = allDesserts;
                        });
                      } else {
                        setState(() {
                          which = DessertEnum.WAFFLE;
                        });
                        selectCategory(which!);
                      }
                    },
                    color_: which == DessertEnum.WAFFLE
                        ? const Color(0xfff5cc82)
                        : Colors.grey.shade500,
                    ballColor: which == DessertEnum.WAFFLE
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
                    color: Colors.grey.shade600,
                  ),
                  textAlign: TextAlign.start,
                )
              ],
            ),
            const SizedBox(height: 30),
            SizedBox(
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
                    child: DessertCardWidget(
                      dessert: dessert_,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => RecipePage(
                              dessert: dessert_,
                            ),
                          ),
                        );
                      },
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
                      color: Color(0xfff56093),
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
                  IconButton(
                    onPressed: () {
                      setState(() {
                        isFavClicked = !isFavClicked;
                        // print(isFavClicked);
                      });
                    },
                    icon: (isFavClicked)
                        ? Icon(Icons.favorite)
                        : Icon(Icons.favorite_outline),
                    color: (isFavClicked) ? Colors.red : Colors.grey,
                  ),
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
    final desserts = allDesserts.where((dessert) {
      final nameLower = dessert.name.toLowerCase();
      final searchLower = query.toLowerCase();
      return nameLower.contains(searchLower);
    }).toList();
    setState(() {
      which = null;
      this.query = query;
      this.desserts = desserts;
    });
  }

  void selectCategory(DessertEnum whichType) {
    final desserts = allDesserts.where((dessert) {
      return dessert.type == whichType;
    }).toList();
    setState(() {
      this.desserts = desserts;
    });
  }
}
