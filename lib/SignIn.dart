
import 'package:flutter/material.dart';

import 'ForgotPassword.dart';
import 'Registration.dart';
import 'home2.dart';

class SignIn extends StatelessWidget {
  String email = 'demo@deliveryboy.com';
  String password = '123';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: 50, right: 30, left: 30, bottom: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Home2()));
                },
                child: Text(
                  'SKIP',
                  style: TextStyle(fontSize: 15),
                )),
            Center(
              child: Image.asset(
                'assets/images/shisha-1.png',
                width: 170,
                height: 160,
              ),
            ),
            SizedBox(
              height: 25,
            ),
            TextFormField(
              decoration: InputDecoration(
                fillColor: Colors.grey.shade50,
                filled: true,
                isDense: true,
                labelText: 'Email',
                border: InputBorder.none,
                prefixIcon: Icon(Icons.email),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              decoration: InputDecoration(
                fillColor: Colors.grey.shade50,
                filled: true,
                isDense: true,
                prefixIcon: Icon(Icons.lock),
                suffixIcon: Icon(Icons.remove_red_eye),
                labelText: 'Password',
                border: InputBorder.none,
              ),
            ),
            SizedBox(height: 15),
            GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ForgotPassword()));
                },
                child: Text(
                  'Forgot Password?',
                  style: TextStyle(fontWeight: FontWeight.w400),
                )),
            SizedBox(
              height: 25,
            ),
            ConstrainedBox(
                constraints: BoxConstraints.expand(height: 50),
                child: RaisedButton(
                  onPressed: () {
                    Navigator.pop(context,
                        MaterialPageRoute(builder: (context) => Home2()));
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                  ),
                  color: Colors.lightGreen.shade700,
                  child: Text(
                    'LOG IN',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                )),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Text(
                'OR LOGIN WITH ',
                style: TextStyle(color: Colors.blue.shade300, fontSize: 20),
              ),
            ),
            SizedBox(width: 10),
            Center(
                child: Image.asset(
              'assets/images/google-240.png',
              width: 40,
              height: 40,
            )),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("Don't have an account?"),
                SizedBox(
                  width: 7,
                ),
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Registration()));
                    },
                    child: Text(
                      'SignUp',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
