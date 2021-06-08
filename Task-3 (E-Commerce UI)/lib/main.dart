import 'package:flutter/material.dart';
import 'utils.dart';
import 'data.dart';
import 'product.dart';
import 'search.dart';

void main() => runApp(MaterialApp(
      home: MyApp(),
      debugShowCheckedModeBanner: false,
    ));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Color(0xFF696D77),
          Color(0xFF292C36)
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter, tileMode: TileMode.clamp)),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            leading: IconButton(
              icon: Icon(
                Icons.arrow_back,
                size: screenAwareSize(20.0, context),
              ),
              onPressed: () {},
            ),
            title: Text("Shopping", style: TextStyle(color: Colors.white, fontSize: screenAwareSize(18.0, context), fontFamily: "Montserrat-Bold")),
            centerTitle: true,
            actions: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.favorite_border,
                  size: screenAwareSize(20.0, context),
                  color: Colors.white,
                ),
                onPressed: () {},
              )
            ],
          ),
          body: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                SingleProduct(),
                // SearchProduct(),
              ],
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Profile',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: 'Search',
              ),
            ],
            selectedItemColor: Colors.amber[800],
            onTap: (int index) {
              print(index);
              Navigator.push(context, MaterialPageRoute(builder: (context) => SearchProduct()));
            },
          ),
        ));
  }

  void _onItemTapped(int index) {
    print(index);
    // SearchProduct()
    // Navigator.push(context,MaterialPageRoute(builder:(context)=>SearchProduct()));
  }
}
