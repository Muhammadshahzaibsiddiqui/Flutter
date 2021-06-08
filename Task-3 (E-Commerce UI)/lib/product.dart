import 'package:flutter/material.dart';
import 'utils.dart';
import 'data.dart';

class SingleProduct extends StatelessWidget{
  @override
 Widget build(BuildContext context) {
    return new Container(
      width: double.infinity,
      height: screenAwareSize(300.0, context),
      child: Stack(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: 200,
               decoration: BoxDecoration(
                    image: DecorationImage(
                    image: NetworkImage("data:image/jpeg;base64,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"),
                    fit: BoxFit.contain,
                  )),
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(10),
              ),
              
            ],
          ),
          Positioned(
            left: screenAwareSize(18.0, context),
            bottom: screenAwareSize(60.0, context),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("Rating", style: TextStyle(color: Color(0xFF949598), fontSize: screenAwareSize(12.0, context), fontFamily: "Montserrat-SemiBold")),
                SizedBox(
                  height: screenAwareSize(8.0, context),
                ),
                Row(
                  children: <Widget>[
                    SizedBox(
                      width: 8.0,
                    ),
                    Icon(Icons.star, color: Color(0xFFFFE600)),
                    SizedBox(
                      width: screenAwareSize(5.0, context),
                    ),
                    Text("4.5", style: TextStyle(color: Color(0xFFFFE600))),
                    SizedBox(
                      width: screenAwareSize(5.0, context),
                    ),
                    Text("(378 People)", style: TextStyle(color: Colors.white, fontSize: 14.0))
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            left: screenAwareSize(0.0, context),
            bottom: screenAwareSize(30.0, context),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: screenAwareSize(18.0, context)),
                  child: Text(
                    "Product Description",
                    style: TextStyle(
                        color: Color(0xFF949598),
                        fontSize: screenAwareSize(12.0, context),
                        fontFamily: "Montserrat-SemiBold"),
                  ),
                ),
                SizedBox(
                  height: screenAwareSize(8.0, context),
                ),
                ]
            )

          ),
          Positioned(
            left: screenAwareSize(0.0, context),
            bottom: screenAwareSize(5.0, context),
            width:MediaQuery.of(context).size.width,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: screenAwareSize(18.0, context)),
                  child: Text(
                    desc,
                    style: TextStyle(
                        color: Color(0xFF949598),
                        fontSize: screenAwareSize(10.0, context),
                        fontFamily: "Montserrat-SemiBold"),
                  ),
                ),
                SizedBox(
                  height: screenAwareSize(8.0, context),
                ),
                ]
            )

          )
          
        ],
      ),
    );
  }
}

