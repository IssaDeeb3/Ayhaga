import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter1/modules/archived_tasks/archive_tasks/done_tasks_screen.dart';
import 'package:flutter1/modules/done_tasks/done_tasks_screen.dart';

import '../modules/new_tasks/new_tasks_screen.dart';

class HomeLayout  extends StatefulWidget {
  const HomeLayout ({Key? key}) : super(key: key);

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {

  int currentIndex = 0;
  List<Widget> screens = [
    NewTasksScreen(),
    DoneTasksScreen(),
    ArchiveTasksScreen(),
  ];
  List<String> lable = [

    'New Tasks',
    'Done Tasks',
    'Archived Tasks',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            lable[currentIndex]
        ),
      ),
      body : screens[currentIndex],
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.add
        ),
        onPressed: (){



        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex:currentIndex ,
        onTap: (index){

          setState(() {

            currentIndex = index;
          });
        },

        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: 'new tasks'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.done),
            label: 'done tasks'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.archive),
            label: 'archived tasks'
          ),

        ],
      ),

    );
  }
}
