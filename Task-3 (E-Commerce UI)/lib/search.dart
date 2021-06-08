import 'package:flutter/material.dart';
import 'utils.dart';
import 'data.dart';
import 'product.dart';
import 'main.dart';

class SearchProduct extends StatefulWidget {
  @override
  _SearchProducState createState() => _SearchProducState();
}

class _SearchProducState extends State<SearchProduct> {
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
          body: SingleChildScrollView(child: Column(
            
           
          children:[  
             abc("data:image/jpeg;base64,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" ,  
              "Iphone12", "5.0 (23 reviews)" , "20 pieces  90\$" ,"Quantity: 1"),
              SizedBox(height: 2,),
             abc("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS_GAWPrQqQblAZzFpAh7vTgVAOvyGdDet9hg&usqp=CAU" ,  
              "Note 20 ultra", "5.0 (23 reviews)" , "20 pieces  90\$" ,"Quantity: 1"),
              SizedBox(height: 2,),
              abc("data:image/jpeg;base64,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" ,  
              "Macbook Air", "5.0 (23 reviews)" , "20 pieces  90\$" ,"Quantity: 1"),
              SizedBox(height: 2,),
              abc("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQAVFxJFaGZNrZcNK-GY3j-B_-CAUThYBQWng&usqp=CAU" ,  
              "Macbook Pro", "5.0 (23 reviews)" , "20 pieces  90\$" ,"Quantity: 1"),
              SizedBox(height: 2,),
              abc("data:image/jpeg;base64,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" ,  
              "Gaming PC", "5.0 (23 reviews)" , "20 pieces  90\$" ,"Quantity: 1"),
             
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
              Navigator.push(context, MaterialPageRoute(builder: (context) => MyApp()));
            },
          ),
        ));
  }
}

Widget abc(String image, String title, String subtitle1, String subtitle2, String subtitle3) {
  return Container(
    width: 450,
    height: 100,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
    ),
    child: ListTile(
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(8.0),
        child: Image.network(
          image,
          fit: BoxFit.fitHeight,
        ),
      ),
      title: Text(title),
      subtitle: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(subtitle1),
        SizedBox(
          height: 2,
        ),
        Text(subtitle2),
        SizedBox(
          height: 2,
        ),
        Text(subtitle3),
      ]),
    ),
  );
}
