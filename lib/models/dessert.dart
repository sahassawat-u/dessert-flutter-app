import 'dart:ui';

import 'package:dessert_app/models/ingredient.dart';
import 'package:dessert_app/pages/home_page.dart';

class Dessert {
  final String name;
  final DessertEnum type;
  final String imgUrl;
  final int prepTime;
  final int cookTime;
  final String serving;
  final String lvl;
  final Color color;
  final String step;
  final List<Ingredient> ingredients;

  Dessert({
    required this.name,
    required this.type,
    required this.imgUrl,
    required this.prepTime,
    required this.cookTime,
    required this.serving,
    required this.lvl,
    required this.color,
    required this.step,
    required this.ingredients,
  });
}
