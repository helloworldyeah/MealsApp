import 'package:flutter/material.dart';
import './models/Meal.dart';

class Mealitam extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;
  final int duration;
  final Complexity complexity;
  final Affordability affordability;

  Mealitam(this.id, this.title, this.imageUrl, this.duration, this.complexity,
      this.affordability);

  void selectmeal(BuildContext context) {
    Navigator.of(context).pushNamed('meal-deatils', arguments: id);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectmeal(context),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 4,
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                  child: Image.network(imageUrl),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(
                20,
              ),
              child: Row(
                children: [
                  Row(
                    children: [
                      Icon(Icons.timer),
                      SizedBox(
                        width: 6,
                      ),
                      Text(duration.toString()),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.work),
                      SizedBox(
                        width: 6,
                      ),
                      Text(complexity.toString())
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.nat),
                      SizedBox(
                        width: 6,
                      ),
                      Text(affordability.toString())
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
