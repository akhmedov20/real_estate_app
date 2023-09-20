import 'package:flutter/material.dart';

import '../favorite/favorite_screen.dart';
import '../profile/profile_screen.dart';
import '../search/search filter/filter_results_screen.dart';
import 'home_screen.dart';


class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}
  int selectedIndex=0;
class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: screen[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        selectedItemColor: Color(0xFF234F68),
        unselectedItemColor: Colors.grey,
        currentIndex: selectedIndex,
        onTap: (i){
          setState(() {
            selectedIndex = i;
          });
        },
        items: [
         BottomNavigationBarItem(icon: Icon(Icons.home_outlined,size: 20,),label: ""),
         BottomNavigationBarItem(icon: Icon(Icons.search,size: 20,),label: ""),
         BottomNavigationBarItem(icon: Icon(Icons.favorite_outline,size: 20,),label: ""),
         BottomNavigationBarItem(icon: Icon(Icons.person_outline,size: 20,),label: ""),
        ],
      ),
    );
  }
  List<Widget> screen = [
    HomeScreen(),
    FilterResults(),
    FavoriteScreen(),
    ProfileScreen()
  ];
}
