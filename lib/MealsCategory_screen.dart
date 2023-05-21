import 'package:flutter/material.dart';
import './Meal_item.dart';
import './Data/meal_data.dart';

class MealsCategory_screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final routesArgs =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    final title = routesArgs['title'].toString();
    final color = routesArgs['colorbeensended'];
    final id = routesArgs['id'];
    final CategoryMeals = DUMMY_MEALS
        .where((element) => element.categories.contains(id))
        .toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: color,
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          return Mealitam(
              CategoryMeals[index].id,
              CategoryMeals[index].title,
              CategoryMeals[index].imageUrl,
              CategoryMeals[index].duration,
              CategoryMeals[index].complexity,
              CategoryMeals[index].affordability);
        },
        itemCount: CategoryMeals.length,
      ),
    );
  }
}
