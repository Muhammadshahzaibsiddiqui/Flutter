import 'dart:ui';

import 'screen1.dart';
import 'screen2.dart';
import 'screen3.dart';
import 'screen4.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentTab = 0;

  Widget currentScreen = Screen1();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: new FloatingActionButton(
        child: const Icon(Icons.search),
        onPressed: () {},
        backgroundColor: Colors.green,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterDocked,
      body: PageStorage(bucket: PageStorageBucket(), child: currentScreen),
      bottomNavigationBar: BottomAppBar(
        // notchMargin: 50,
        color: Colors.white,
        child: Container(
          height: 60,
          child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: <Widget>[
            MaterialButton(
                minWidth: 50,
                onPressed: () {
                  setState(() {
                    currentScreen = Screen1();
                    currentTab = 0;
                  });
                },
                child: Icon(Icons.home, color: currentTab == 0 ? Colors.black : Colors.green)),
            MaterialButton(
                minWidth: 60,
                onPressed: () {
                  setState(() {
                    currentScreen = Screen2();
                    currentTab = 1;
                  });
                },
                child: Icon(Icons.favorite, color: currentTab == 1 ? Colors.black : Colors.green)),
            MaterialButton(
                minWidth: 60,
                onPressed: () {
                  setState(() {
                    currentScreen = Screen3();
                    currentTab = 2;
                  });
                },
                child: Icon(Icons.card_travel, color: currentTab == 2 ? Colors.black : Colors.green)),
            MaterialButton(
                minWidth: 60,
                onPressed: () {
                  setState(() {
                    currentScreen = Screen4();
                    currentTab = 3;
                  });
                },
                child: Icon(Icons.person, color: currentTab == 3 ? Colors.black : Colors.green)),
          ]),
        ),
      ),
    );
  }
}
