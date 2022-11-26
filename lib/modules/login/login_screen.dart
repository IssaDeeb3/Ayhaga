import 'package:flutter/material.dart';
import 'package:flutter1/shared/components/components.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var Emailcontroller = TextEditingController();
  var Passwordcontroller = TextEditingController();
  var formKey = GlobalKey<FormState>();
  bool isPassword = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.redAccent,
        leading: Icon(Icons.search),
        title: Text('FirstApp'),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.menu))],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  defaultformfield(
                      controller: Emailcontroller,
                      hint : 'Email Address',
                      prefix: Icons.email,
                      type: TextInputType.emailAddress,
                      validate: (value) {
                        if (value!.isEmpty) {
                          return 'Email Address must not be empty';
                        }
                        return null;
                      }),
                  const SizedBox(
                    height: 20,
                  ),
                  defaultformfield(
                    hint: 'Password',
                        controller: Passwordcontroller,
                    type: TextInputType.visiblePassword,
                    prefix: Icons.lock,
                    suffix: isPassword ? Icons.visibility : Icons.visibility_off,
                      isPassword: isPassword,
                    sufixOnpressed:(){

                      setState(() {
                        isPassword = !isPassword;
                      });
                    } ,
                    validate: (value){
                      if(value!.isEmpty){
                        return ' password must not be empty';
                      }
                      return null;
                    }
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  defaultButton(
                      text: 'Login',
                      function: () {
                        if (formKey.currentState!.validate()) {
                          print(Emailcontroller.text);
                          print(Passwordcontroller.text);
                        }
                      },
                      isUpperCase: false),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Don\'t have an account'),
                      TextButton(onPressed: () {}, child: Text('Register Now')),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
