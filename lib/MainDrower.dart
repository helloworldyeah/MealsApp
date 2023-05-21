import 'package:flutter/material.dart';

class MainDrower extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 100,
            width: double.infinity,
            alignment: Alignment.center,
            color: Theme.of(context).canvasColor,
            child: Text('Cooking',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold)),
          ),
          ListTile(
            leading: Icon(Icons.restaurant),
            title: Text("food"),
            onTap: () {},
          ),
          SizedBox(
            height: 20,
          ),
          ListTile(
            leading: Icon(Icons.details_sharp),
            title: Text("food"),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
