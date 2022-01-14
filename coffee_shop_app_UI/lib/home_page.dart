import 'package:flutter/material.dart';

import 'package:line_icons/line_icons.dart';

import 'map_screen.dart';
import 'menu_list.dart';

class HomePage extends StatefulWidget{
  const HomePage({Key? key}) : super(key: key);

  @override
  HomePageState createState()=>HomePageState();
}
class HomePageState extends State<HomePage>{
  int tabIndex = 0;
  List<Widget>? listScreens;
  @override
  void initState() {
    super.initState();
    listScreens = [
      const MenuScreen(),
      const LocationPage(),
    ];
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: listScreens![tabIndex],
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.brown,
          unselectedItemColor: Colors.grey[400],
          backgroundColor: Colors.white,
          currentIndex: tabIndex,
          onTap: (int index) {
            setState(() {
              tabIndex = index;
            });
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(LineIcons.coffee),
              title: Text('Coffee List'),
            ),
            BottomNavigationBarItem(
              icon: Icon(LineIcons.locationArrow),
              title: Text('Map'),
            ),
          ]),
      backgroundColor:Colors.white,
    );
  }
}