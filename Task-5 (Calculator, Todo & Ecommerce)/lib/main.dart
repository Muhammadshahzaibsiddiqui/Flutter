import 'package:flutter/material.dart';
import 'dart:ui';
import 'Calculator/Calculator.dart';
import 'Todo/Todo.dart';
import 'E-Commerce/Home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: DefaultTabController(
            length: 3,
            child: Scaffold(
                appBar: AppBar(
                    title: Center(child: Text('Multi Tasking App') ),
                    backgroundColor:  Colors.black,
                    bottom: TabBar(
                      unselectedLabelColor: Colors.white,
                      labelColor: Colors.red,
                      indicatorColor: Colors.red,
                      tabs: [
                        Tab(
                          child: Text('Calculator'),
                        ),
                        Tab(
                          child: Text('Todo'),
                        ),
                        Tab(
                          child: Text('Store'),
                        ),
                      ],
                    )),
                body: TabBarView(
                  children: [
                    Calculator(),
                    Todo(),
                    Home(),
                  ],
                ))));
  }
}
