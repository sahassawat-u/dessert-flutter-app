import 'package:dessert_app/models/ingredient.dart';
import 'package:flutter/material.dart';

class IngredientWidget extends StatelessWidget {
  IngredientWidget({required this.ingredient, required this.theme});
  final Ingredient ingredient;
  final Color theme;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 2, left: 15),
      height: 60,
      width: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: theme),
      ),
      child: Container(
        padding: EdgeInsets.all(10),
        child: Image.network(
          ingredient.imgUrl,
        ),
      ),
    );
  }
}
