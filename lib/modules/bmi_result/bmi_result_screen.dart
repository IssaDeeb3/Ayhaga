import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BMIResultScreen extends StatelessWidget {
  final int result;
  final int age;
  final bool ismale;
  BMIResultScreen({
    required this.result,
    required this.age,
    required this.ismale,
});


  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        titleSpacing: 20.0,
        title: Text(
          'BMI Result',
        ),
        leading: IconButton(
                onPressed: (){
          Navigator.pop(context);
        },
          icon: Icon(
            Icons.keyboard_arrow_left
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 200.0,
            ),
            Text('result',
            style: TextStyle(
              fontSize: 100.0,
              fontWeight: FontWeight.w900,
              color: Colors.white,
            ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                width: double.infinity,

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.redAccent
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Gender : ${ismale ?  'Male' : 'Female'}',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 25.0,
                        ),
                      ),
                      Text(
                        'Result : $result',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 25.0,
                        ),
                      ),
                      Text(
                        'Age : $age',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 25.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
