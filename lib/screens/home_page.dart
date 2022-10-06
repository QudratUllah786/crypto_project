import 'package:cryptoproject/screens/market_screen.dart';
import 'package:cryptoproject/screens/news_screen.dart';
import 'package:cryptoproject/screens/profile.dart';
import 'package:cryptoproject/screens/trade_screen.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import 'accounts_screen.dart';
class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int selectedIndex  = 2;
  var list = [
    Accounts(),
    Trade(),
    News(),
    Market(),
    Profile(),
  ];
  void navigateBottom(int index){
    setState((){
      selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
         // type: BottomNavigationBarType.fixed,
          index: selectedIndex,
          buttonBackgroundColor: Colors.green,
          backgroundColor: Colors.transparent,
          color: Color.fromRGBO(38, 89, 85, 1),
          onTap: navigateBottom,
          items: [
            Icon(Icons.credit_card),
            Icon(Icons.waves_outlined),
            Icon(Icons.newspaper),
            Icon(Icons.bar_chart),
            Icon(Icons.person),
            // BottomNavigationBarItem(icon: Icon(Icons.credit_card),label: ''),
            // BottomNavigationBarItem(icon: Icon(Icons.waves_outlined),label: ''),
            // BottomNavigationBarItem(icon: Icon(Icons.newspaper),label: ''),
            // BottomNavigationBarItem(icon: Icon(Icons.bar_chart),label: ''),
            // BottomNavigationBarItem(icon: Icon(Icons.person),label: ''),
            ]),
      body:Center(
        child:list[selectedIndex],
      ) ,
    );
  }
}
