import 'package:flutter/material.dart';
import './Data/meal_data.dart';

class Mealsdetails extends StatelessWidget {
  Widget buildtextbetween(BuildContext context, String title) {
    return Container(
      child: Text(
        title,
        style: Theme.of(context).textTheme.headline1,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final routesArgs = ModalRoute.of(context)!.settings.arguments as String;
    final meals_id = routesArgs;
    final mealobject =
        DUMMY_MEALS.firstWhere((element) => element.id == meals_id);

    return Scaffold(
      appBar: AppBar(
        title: Text(meals_id),
      ),
      body: Center(
          child: SingleChildScrollView(
        child: Column(children: [
          Container(
            height: 300,
            width: double.infinity,
            child: Image.network(
              mealobject.imageUrl,
              fit: BoxFit.cover,
            ),
          ),
          buildtextbetween(context, 'ingredaints'),
          Container(
            height: 200,
            width: 300,
            child: ListView.builder(
              itemBuilder: (ctx, index) {
                return Card(
                  color: Theme.of(context).canvasColor,
                  child: Text(mealobject.ingredients[index]),
                );
              },
              itemCount: mealobject.ingredients.length,
            ),
          ),
          buildtextbetween(context, 'steps'),
          Container(
            height: 200,
            width: 300,
            child: ListView.builder(
              itemBuilder: (ctx, index) {
                return Card(
                  color: Theme.of(context).canvasColor,
                  child: Text(mealobject.steps[index]),
                );
              },
              itemCount: mealobject.steps.length,
            ),
          ),
        ]),
      )),
    );
  }
}
