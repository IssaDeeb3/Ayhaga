import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UsersModel{
  final int ID;
  final String name;
  final String phone;
  UsersModel({
      required this.ID,
      required this.name,
      required this.phone,
} );
}

class UsersScreen extends StatelessWidget {

  List<UsersModel> users = [
    UsersModel(
        ID: 1,
        name:'Issa' ,
        phone: '01118414599',
    ),
    UsersModel(
        ID: 2,
        name:'Assem' ,
        phone: '01022334811',
    ),
    UsersModel(
        ID: 3,
        name:'Issa' ,
        phone: '01118414599',
    ),
    UsersModel(
      ID: 4,
      name:'Ahmed' ,
      phone: '01118414599',
    ),
    UsersModel(
      ID: 5,
      name:'Hossam' ,
      phone: '01022334811',
    ),
    UsersModel(
      ID: 6,
      name:'mamdoh' ,
      phone: '01118414599',
    ),
    UsersModel(
      ID: 2,
      name:'Assem' ,
      phone: '01022334811',
    ),
    UsersModel(
      ID: 3,
      name:'Issa' ,
      phone: '01118414599',
    ),
    UsersModel(
      ID: 4,
      name:'Ahmed' ,
      phone: '01118414599',
    ),
    UsersModel(
      ID: 5,
      name:'Hossam' ,
      phone: '01022334811',
    ),
    UsersModel(
      ID: 6,
      name:'mamdoh' ,
      phone: '01118414599',
    ),


  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Users'),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => buildUserItem(users[index]),
        separatorBuilder: (context, index) => Padding(
          padding: const EdgeInsetsDirectional.only(start: 20),
          child: Container(
            width: double.infinity,
            height: 1.0,
            color: Colors.grey[300],
          ),
        ),
        itemCount: users.length,
      ),
    );
  }

  Widget buildUserItem(UsersModel user) => Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          children: [
            CircleAvatar(
              radius: 20.0,
              child: Text(
                '${user.ID}',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0),
              ),
            ),
            SizedBox(
              width: 10.0,
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${user.name}',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0),
                ),
                Text(
                  '${user.phone}',
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ],
        ),
      );
}
