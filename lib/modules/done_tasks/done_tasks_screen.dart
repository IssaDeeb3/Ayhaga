import 'package:flutter/cupertino.dart';

class DoneTasksScreen extends StatelessWidget {
  const DoneTasksScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Done Tasks',
            style: TextStyle(
          fontSize: 50.0,
        fontWeight: FontWeight.w900,

      ),
      ),
    );
  }
}
