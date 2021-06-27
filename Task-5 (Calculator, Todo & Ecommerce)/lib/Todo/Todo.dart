import 'package:flutter/material.dart';

class Todo extends StatefulWidget {
  @override
  _TodoState createState() => _TodoState();
}

class _TodoState extends State<Todo> {
  var input;
  List<dynamic> lst = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                    'https://image.freepik.com/free-photo/drifting-red-smoke-overlay-texture-background_23-2148092764.jpg',
                  ),
                  fit: BoxFit.cover)),
          child: ListView.builder(
              itemCount: lst.length,
              itemBuilder: (context, index) {
                return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xFF607D8B).withOpacity(0.5),
                    ),
                    margin: EdgeInsets.only(top: 15),
                    child: ListTile(
                      title: Text(lst[index], style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold, color: Colors.white, letterSpacing: 1.0)),
                      trailing: Container(
                        width: 50,
                        child: Row(
                          children: [
                            GestureDetector(
                              child: Icon(Icons.edit, color: Colors.white),
                              onTap: () {
                                showDialog(
                                    context: context,
                                    builder: (context) {
                                      return AlertDialog(
                                        title: Text("Edit Item"),
                                        content: TextField(
                                          onChanged: (value) {
                                            input = value;
                                          },
                                        ),
                                        actions: [
                                          ElevatedButton(
                                              onPressed: () {
                                                setState(() {
                                                  lst.replaceRange(index, index + 1, {
                                                    input
                                                  });
                                                });
                                                Navigator.of(context).pop();
                                              },
                                              child: Text("Edit"))
                                        ],
                                      );
                                    });
                              },
                            ),
                            GestureDetector(
                              child: Icon(Icons.delete, color: Colors.red),
                              onTap: () {
                                setState(() {
                                  lst.removeAt(index);
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                    ));
              })),
      floatingActionButton: Align(
        alignment: Alignment.bottomRight,
        child: Container(
          width: 200,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FloatingActionButton(
                child: Icon(
                  Icons.refresh,
                  color: Colors.red,
                  size: 40,
                ),
                backgroundColor: Colors.white,
                onPressed: () {
                  setState(() {
                    lst.clear();
                  });
                },
              ),
              FloatingActionButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text("Add Item"),
                          content: TextField(
                            onChanged: (value) {
                              input = value;
                            },
                          ),
                          actions: [
                            ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    lst.add(input);
                                  });
                                  Navigator.of(context).pop();
                                },
                                child: Text("Add"))
                          ],
                        );
                      });
                },
                child: Icon(
                  Icons.add,
                  color: Colors.red,
                  size: 50,
                ),
                backgroundColor: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
