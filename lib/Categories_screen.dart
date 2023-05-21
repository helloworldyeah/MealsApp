import 'package:flutter/material.dart';
import './Data/Category_data.dart';
import './Category_item.dart';

class Categories_screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GridView(
      children: Category_data.map((categoryitem) {
        return CategoryItem(
            categoryitem.id, categoryitem.color, categoryitem.title);
      }).toList(),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20),
    ));
  }
}
