import 'package:flutter/material.dart';
import './MealsCategory_screen.dart';

class CategoryItem extends StatelessWidget {
  final title;
  final colorbeensended;
  final id;
  CategoryItem(this.id, this.colorbeensended, this.title);

  void selectedcategory(BuildContext ctx) {
    Navigator.of(ctx).pushNamed('category-meals', arguments: {
      'id': id,
      'title': title,
      'colorbeensended': colorbeensended
    });

    /* Navigator.of(ctx).push(MaterialPageRoute(
      builder: (_) {
        return MealsCategory_screen(title, colorbeensended);
      },
    )); */
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () => selectedcategory(context),
        child: Container(
          padding: EdgeInsets.all(15),
          child: Text(
            title,
            style: Theme.of(context).textTheme.headline1,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            gradient: LinearGradient(
              colors: [colorbeensended.withOpacity(0.7), colorbeensended],
              end: Alignment.topLeft,
              begin: Alignment.bottomRight,
            ),
          ),
        ));
  }
}
