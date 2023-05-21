import 'package:flutter/material.dart';
import './TabsScreen.dart';
import './Meal_details.dart';
import './MealsCategory_screen.dart';
import '/Categories_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "multi screen",
      theme: ThemeData(
          primarySwatch: Colors.pink,
          accentColor: Colors.amber,
          textTheme: ThemeData.light().textTheme.copyWith(
                bodyText1: TextStyle(
                  color: Colors.pink,
                ),
                bodyText2: TextStyle(
                  color: Colors.yellow,
                ),
                headline1: TextStyle(
                  fontSize: 27,
                  fontWeight: FontWeight.bold,
                ),
              )),
      initialRoute: '/',
      routes: {
        '/': (context) => TabsScreen(),
        'category-meals': (ctx) => MealsCategory_screen(),
        'meal-deatils': (ctx) => Mealsdetails()
      },
    );
  }
}
