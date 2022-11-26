import 'package:flutter/material.dart';
import 'package:flutter1/modules/counter/counter_screeen.dart';
import 'package:flutter1/modules/users/users_screen.dart';
import 'layout/home_layout.dart';
import 'modules/bmi_result/bmi_result_screen.dart';
import 'modules/bmi/bmi_screen.dart';
import 'modules/home/home_screen.dart';
import 'modules/login/login_screen.dart';
import 'modules/messenger/messenger_screen.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget
{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
debugShowCheckedModeBanner: false,
home: HomeLayout(),
    );
  }

}






