import 'package:flutter/material.dart';

import '../Widgets/custom_button.dart';
// ignore_for_file: prefer_const_constructors


class LoginScreen extends StatelessWidget {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                TextFormField(
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  onChanged: (String value) {
                    print(value);
                  },
                  onFieldSubmitted: (String value) {
                    print(value);
                  },
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.email,
                    ),
                    labelText: 'Email Address',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                TextFormField(
                  controller: passwordController,
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  onChanged: (String value) {
                    print(value);
                  },
                  onFieldSubmitted: (String value) {
                    print(value);
                  },
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.lock,
                    ),
                    suffixIcon: Icon(
                      Icons.remove_red_eye_rounded,
                    ),
                    labelText: 'Password',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                defaultButton(function: (){
                  print(emailController.text);
                  print(passwordController.text);
                }, text: 'login',radius: 10),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don\'t have an account?',
                    ),
                    MaterialButton(onPressed: (){},
                      child: Text(
                        style: TextStyle(
                          color: Colors.blue,
                        ),
                        'Register now',
                      ),

                    ),

                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
