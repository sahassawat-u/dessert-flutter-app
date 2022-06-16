import 'package:dessert_app/models/ingredient.dart';
import 'package:flutter/material.dart';

class IngredientWidget extends StatelessWidget {
  IngredientWidget({required this.ingredient, required this.theme});
  final Ingredient ingredient;
  final Color theme;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showIngredientDialog(context);
        // print(ingredient.measure);
      },
      child: Container(
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
      ),
    );
  }

  void showIngredientDialog(BuildContext context) => showDialog(
      context: context,
      builder: (ctx) => Dialog(
            backgroundColor: Colors.transparent,
            child: Container(
              padding: EdgeInsets.all(8),
              height: 150,
              width: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Image.network(
                      ingredient.imgUrl,
                      width: 100,
                      height: 100,
                    ),
                  ),
                  Container(
                    child: Text(
                      ingredient.measure,
                      style: TextStyle(fontSize: 20),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ));
}
