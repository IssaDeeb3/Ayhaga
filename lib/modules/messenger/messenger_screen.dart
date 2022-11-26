import 'package:flutter/material.dart';

class MessengerScreen  extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0.0,
        titleSpacing: 16.0,
        title: Row(
          children: [
            CircleAvatar(
              radius: 20.0,
              backgroundImage: NetworkImage(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ47leWEGgaGJ784_gaufFpM6LemnssMZ91uQ&usqp=CAU'
              ),
            ),
            SizedBox(
              width: 7.0,
            ),
            Text(
              'Chats',
              style: TextStyle(
                  fontWeight: FontWeight.bold
              ),
            ),
          ],
        ),
        actions: [
          IconButton(onPressed: () {},
              icon: CircleAvatar(
                radius: 20.0,
                backgroundColor: Colors.grey.withOpacity(0.7),

                child: Icon(
                  Icons.camera_alt,
                  color: Colors.white,
                  size: 21.0,
                ),
              )),
          IconButton(onPressed: () {},
              icon: CircleAvatar(
                radius: 20.0,
                backgroundColor: Colors.grey.withOpacity(0.7),

                child: Icon(
                  Icons.edit,
                  color: Colors.white,
                  size: 21.0,
                ),
              )),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(7.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.grey.withOpacity(0.4),
                ),
                child: Row(
                  children: [
                    Icon(Icons.search,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    Text('serach',
                      style: TextStyle(
                          color: Colors.grey
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                height: 120.0,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                    itemBuilder: (context,index)=>buildStroryItem() ,
                    separatorBuilder: (context,index) => SizedBox(width: 10.0) ,
                    itemCount: 10
                ),
              ),
              ListView.separated(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder:(context,index)=>buildChatItem(),
                separatorBuilder:(context,index)=> SizedBox(
                  height: 20.0,
                ) ,
                itemCount: 4,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildChatItem() => Column(
    children: [
      SizedBox(
        height: 25.0,
      ),
      Row(
        children: [
          Stack(
            alignment: AlignmentDirectional.bottomEnd,
            children: [
              CircleAvatar(
                radius: 30.0,
                backgroundImage: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ47leWEGgaGJ784_gaufFpM6LemnssMZ91uQ&usqp=CAU'
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.only(
                    bottom: 2.0,
                    end: 2.0
                ),
                child: CircleAvatar(
                  radius: 8.0,
                  backgroundColor: Colors.black,


                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.only(
                    bottom: 2.0,
                    end: 2.0
                ),
                child: CircleAvatar(
                  radius: 7.0,
                  backgroundColor: Colors.green,


                ),
              ),
            ],
          ),
          SizedBox(
            width: 10.0,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Issa Mohamed Ahmed Issa Mohamed Ahmed Issa Mohamed Ahmed Issa Mohamed Ahmed ',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 16.0),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        'hello hello hello hello hello hello hello hello hello hello hello hello Issa mohamed '
                        ,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: Colors.white,

                        ),),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10.0),
                      child: Container(
                        width: 7.0,
                        height: 7.0,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle
                        ),
                      ),
                    ),
                    Text('2:00 PM',
                      style: TextStyle(
                          color: Colors.white
                      ),)
                  ],
                ),

              ],
            ),
          ),
        ],
      ),
      SizedBox(
        height: 15.0,
      ),
      Row(
        children: [
          Stack(
            alignment: AlignmentDirectional.bottomEnd,
            children: [
              CircleAvatar(
                radius: 30.0,
                backgroundImage: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ47leWEGgaGJ784_gaufFpM6LemnssMZ91uQ&usqp=CAU'
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.only(
                    bottom: 2.0,
                    end: 2.0
                ),
                child: CircleAvatar(
                  radius: 8.0,
                  backgroundColor: Colors.black,


                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.only(
                    bottom: 2.0,
                    end: 2.0
                ),
                child: CircleAvatar(
                  radius: 7.0,
                  backgroundColor: Colors.green,


                ),
              ),
            ],
          ),
          SizedBox(
            width: 10.0,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Issa Mohamed Ahmed Issa Mohamed Ahmed Issa Mohamed Ahmed Issa Mohamed Ahmed ',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 16.0),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        'hello hello hello hello hello hello hello hello hello hello hello hello Issa mohamed '
                        ,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: Colors.white,

                        ),),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10.0),
                      child: Container(
                        width: 7.0,
                        height: 7.0,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle
                        ),
                      ),
                    ),
                    Text('2:00 PM',
                      style: TextStyle(
                          color: Colors.white
                      ),)
                  ],
                ),

              ],
            ),
          ),
        ],
      ),
      SizedBox(
        height: 15.0,
      ),
      Row(
        children: [
          Stack(
            alignment: AlignmentDirectional.bottomEnd,
            children: [
              CircleAvatar(
                radius: 30.0,
                backgroundImage: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ47leWEGgaGJ784_gaufFpM6LemnssMZ91uQ&usqp=CAU'
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.only(
                    bottom: 2.0,
                    end: 2.0
                ),
                child: CircleAvatar(
                  radius: 8.0,
                  backgroundColor: Colors.black,


                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.only(
                    bottom: 2.0,
                    end: 2.0
                ),
                child: CircleAvatar(
                  radius: 7.0,
                  backgroundColor: Colors.green,


                ),
              ),
            ],
          ),
          SizedBox(
            width: 10.0,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Issa Mohamed Ahmed Issa Mohamed Ahmed Issa Mohamed Ahmed Issa Mohamed Ahmed ',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 16.0),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        'hello hello hello hello hello hello hello hello hello hello hello hello Issa mohamed '
                        ,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: Colors.white,

                        ),),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10.0),
                      child: Container(
                        width: 7.0,
                        height: 7.0,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle
                        ),
                      ),
                    ),
                    Text('2:00 PM',
                      style: TextStyle(
                          color: Colors.white
                      ),)
                  ],
                ),

              ],
            ),
          ),
        ],
      ),
      SizedBox(
        height: 15.0,
      ),
      Row(
        children: [
          Stack(
            alignment: AlignmentDirectional.bottomEnd,
            children: [
              CircleAvatar(
                radius: 30.0,
                backgroundImage: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ47leWEGgaGJ784_gaufFpM6LemnssMZ91uQ&usqp=CAU'
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.only(
                    bottom: 2.0,
                    end: 2.0
                ),
                child: CircleAvatar(
                  radius: 8.0,
                  backgroundColor: Colors.black,


                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.only(
                    bottom: 2.0,
                    end: 2.0
                ),
                child: CircleAvatar(
                  radius: 7.0,
                  backgroundColor: Colors.green,


                ),
              ),
            ],
          ),
          SizedBox(
            width: 10.0,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Issa Mohamed Ahmed Issa Mohamed Ahmed Issa Mohamed Ahmed Issa Mohamed Ahmed ',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 16.0),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        'hello hello hello hello hello hello hello hello hello hello hello hello Issa mohamed '
                        ,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: Colors.white,

                        ),),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10.0),
                      child: Container(
                        width: 7.0,
                        height: 7.0,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle
                        ),
                      ),
                    ),
                    Text('2:00 PM',
                      style: TextStyle(
                          color: Colors.white
                      ),)
                  ],
                ),

              ],
            ),
          ),
        ],
      ),
      SizedBox(
        height: 15.0,
      ),
      Row(
        children: [
          Stack(
            alignment: AlignmentDirectional.bottomEnd,
            children: [
              CircleAvatar(
                radius: 30.0,
                backgroundImage: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ47leWEGgaGJ784_gaufFpM6LemnssMZ91uQ&usqp=CAU'
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.only(
                    bottom: 2.0,
                    end: 2.0
                ),
                child: CircleAvatar(
                  radius: 8.0,
                  backgroundColor: Colors.black,


                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.only(
                    bottom: 2.0,
                    end: 2.0
                ),
                child: CircleAvatar(
                  radius: 7.0,
                  backgroundColor: Colors.green,


                ),
              ),
            ],
          ),
          SizedBox(
            width: 10.0,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Issa Mohamed Ahmed Issa Mohamed Ahmed Issa Mohamed Ahmed Issa Mohamed Ahmed ',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 16.0),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        'hello hello hello hello hello hello hello hello hello hello hello hello Issa mohamed '
                        ,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: Colors.white,

                        ),),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10.0),
                      child: Container(
                        width: 7.0,
                        height: 7.0,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle
                        ),
                      ),
                    ),
                    Text('2:00 PM',
                      style: TextStyle(
                          color: Colors.white
                      ),)
                  ],
                ),

              ],
            ),
          ),
        ],
      ),
      SizedBox(
        height: 15.0,
      ),
      Row(
        children: [
          Stack(
            alignment: AlignmentDirectional.bottomEnd,
            children: [
              CircleAvatar(
                radius: 30.0,
                backgroundImage: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ47leWEGgaGJ784_gaufFpM6LemnssMZ91uQ&usqp=CAU'
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.only(
                    bottom: 2.0,
                    end: 2.0
                ),
                child: CircleAvatar(
                  radius: 8.0,
                  backgroundColor: Colors.black,


                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.only(
                    bottom: 2.0,
                    end: 2.0
                ),
                child: CircleAvatar(
                  radius: 7.0,
                  backgroundColor: Colors.green,


                ),
              ),
            ],
          ),
          SizedBox(
            width: 10.0,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Issa Mohamed Ahmed Issa Mohamed Ahmed Issa Mohamed Ahmed Issa Mohamed Ahmed ',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 16.0),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        'hello hello hello hello hello hello hello hello hello hello hello hello Issa mohamed '
                        ,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: Colors.white,

                        ),),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10.0),
                      child: Container(
                        width: 7.0,
                        height: 7.0,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle
                        ),
                      ),
                    ),
                    Text('2:00 PM',
                      style: TextStyle(
                          color: Colors.white
                      ),)
                  ],
                ),

              ],
            ),
          ),
        ],
      ),
      SizedBox(
        height: 15.0,
      ),
      Row(
        children: [
          Stack(
            alignment: AlignmentDirectional.bottomEnd,
            children: [
              CircleAvatar(
                radius: 30.0,
                backgroundImage: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ47leWEGgaGJ784_gaufFpM6LemnssMZ91uQ&usqp=CAU'
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.only(
                    bottom: 2.0,
                    end: 2.0
                ),
                child: CircleAvatar(
                  radius: 8.0,
                  backgroundColor: Colors.black,


                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.only(
                    bottom: 2.0,
                    end: 2.0
                ),
                child: CircleAvatar(
                  radius: 7.0,
                  backgroundColor: Colors.green,


                ),
              ),
            ],
          ),
          SizedBox(
            width: 10.0,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Issa Mohamed Ahmed Issa Mohamed Ahmed Issa Mohamed Ahmed Issa Mohamed Ahmed ',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 16.0),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        'hello hello hello hello hello hello hello hello hello hello hello hello Issa mohamed '
                        ,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: Colors.white,

                        ),),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10.0),
                      child: Container(
                        width: 7.0,
                        height: 7.0,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle
                        ),
                      ),
                    ),
                    Text('2:00 PM',
                      style: TextStyle(
                          color: Colors.white
                      ),)
                  ],
                ),

              ],
            ),
          ),
        ],
      ),
    ],
  );
Widget buildStroryItem()=> Row(
  children: [
    Container(
      width: 60.0,
      child: Column(

        children: [
          Stack(
            alignment: AlignmentDirectional.bottomEnd,
            children: [
              CircleAvatar(
                radius: 30.0,
                backgroundImage: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ47leWEGgaGJ784_gaufFpM6LemnssMZ91uQ&usqp=CAU'
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.only(
                    bottom: 2.0,
                    end: 2.0
                ),
                child: CircleAvatar(
                  radius: 8.0,
                  backgroundColor: Colors.black,


                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.only(
                    bottom: 2.0,
                    end: 2.0
                ),
                child: CircleAvatar(
                  radius: 7.0,
                  backgroundColor: Colors.green,


                ),
              ),
            ],
          ),
          SizedBox(
            height: 10.0,
          ),
          Text('Issa Mohamed Ahmed',
            style: TextStyle(
                color: Colors.white
            ),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    ),
    SizedBox(
      width: 20.0,
    ),
    Container(
      width: 60.0,
      child: Column(

        children: [
          Stack(
            alignment: AlignmentDirectional.bottomEnd,
            children: [
              CircleAvatar(
                radius: 30.0,
                backgroundImage: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ47leWEGgaGJ784_gaufFpM6LemnssMZ91uQ&usqp=CAU'
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.only(
                    bottom: 2.0,
                    end: 2.0
                ),
                child: CircleAvatar(
                  radius: 8.0,
                  backgroundColor: Colors.black,


                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.only(
                    bottom: 2.0,
                    end: 2.0
                ),
                child: CircleAvatar(
                  radius: 7.0,
                  backgroundColor: Colors.green,


                ),
              ),
            ],
          ),
          SizedBox(
            height: 10.0,
          ),
          Text('Issa Mohamed Ahmed',
            style: TextStyle(
                color: Colors.white
            ),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    ),
    SizedBox(
      width: 20.0,
    ),
    Container(
      width: 60.0,
      child: Column(

        children: [
          Stack(
            alignment: AlignmentDirectional.bottomEnd,
            children: [
              CircleAvatar(
                radius: 30.0,
                backgroundImage: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ47leWEGgaGJ784_gaufFpM6LemnssMZ91uQ&usqp=CAU'
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.only(
                    bottom: 2.0,
                    end: 2.0
                ),
                child: CircleAvatar(
                  radius: 8.0,
                  backgroundColor: Colors.black,


                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.only(
                    bottom: 2.0,
                    end: 2.0
                ),
                child: CircleAvatar(
                  radius: 7.0,
                  backgroundColor: Colors.green,


                ),
              ),
            ],
          ),
          SizedBox(
            height: 10.0,
          ),
          Text('Issa Mohamed Ahmed',
            style: TextStyle(
                color: Colors.white
            ),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    ),
    SizedBox(
      width: 20.0,
    ),
    Container(
      width: 60.0,
      child: Column(

        children: [
          Stack(
            alignment: AlignmentDirectional.bottomEnd,
            children: [
              CircleAvatar(
                radius: 30.0,
                backgroundImage: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ47leWEGgaGJ784_gaufFpM6LemnssMZ91uQ&usqp=CAU'
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.only(
                    bottom: 2.0,
                    end: 2.0
                ),
                child: CircleAvatar(
                  radius: 8.0,
                  backgroundColor: Colors.black,


                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.only(
                    bottom: 2.0,
                    end: 2.0
                ),
                child: CircleAvatar(
                  radius: 7.0,
                  backgroundColor: Colors.green,


                ),
              ),
            ],
          ),
          SizedBox(
            height: 10.0,
          ),
          Text('Issa Mohamed Ahmed',
            style: TextStyle(
                color: Colors.white
            ),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    ),
    SizedBox(
      width: 20.0,
    ),
    Container(
      width: 60.0,
      child: Column(

        children: [
          Stack(
            alignment: AlignmentDirectional.bottomEnd,
            children: [
              CircleAvatar(
                radius: 30.0,
                backgroundImage: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ47leWEGgaGJ784_gaufFpM6LemnssMZ91uQ&usqp=CAU'
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.only(
                    bottom: 2.0,
                    end: 2.0
                ),
                child: CircleAvatar(
                  radius: 8.0,
                  backgroundColor: Colors.black,


                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.only(
                    bottom: 2.0,
                    end: 2.0
                ),
                child: CircleAvatar(
                  radius: 7.0,
                  backgroundColor: Colors.green,


                ),
              ),
            ],
          ),
          SizedBox(
            height: 10.0,
          ),
          Text('Issa Mohamed Ahmed',
            style: TextStyle(
                color: Colors.white
            ),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    ),
  ],
);
}