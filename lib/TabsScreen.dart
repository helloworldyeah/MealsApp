import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import './Categories_screen.dart';
import './FaveretScreen.dart';
import './MainDrower.dart';

class TabsScreen extends StatefulWidget {
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  final List<Map<String, Object>> pages = [
    {'page': Categories_screen(), 'title': 'category'},
    {'page': FaveretScreen(), 'title': 'fav'},
  ];

  int selectedindex = 0;
  void seletedtab(int index) {
    setState(() {
      selectedindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(pages[selectedindex]['title'] as String),
      ),
      body: pages[selectedindex]['page'] as Widget,
      drawer: MainDrower(),
      bottomNavigationBar: BottomNavigationBar(
        onTap: seletedtab,
        backgroundColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.blueAccent,
        currentIndex: selectedindex,
        type: BottomNavigationBarType.shifting,
        items: [
          BottomNavigationBarItem(
              backgroundColor: Theme.of(context).primaryColor,
              icon: Icon(Icons.kayaking),
              label: 'category'),
          BottomNavigationBarItem(
              backgroundColor: Theme.of(context).primaryColor,
              icon: Icon(Icons.single_bed),
              label: 'badass'),
        ],
      ),
    );
  }
}
