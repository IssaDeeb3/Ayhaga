import 'package:flutter/material.dart';

class HomeLayout extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        onPressed: ()
        {

        },
        child: Icon(
          Icons.add,
        ),
      ),
      appBar: AppBar( backgroundColor: Colors.black,
        title: Text(
          'Todo App'
        ),
      ),
    );
  }
}
