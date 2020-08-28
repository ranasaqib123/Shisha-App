import 'package:flutter/material.dart';

class ForgotPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('FORGOT PASSWORD '),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: 40,left: 30,right: 30),
        child: Column(children: <Widget>[
          TextFormField(
            decoration: InputDecoration(
suffixIcon: Icon(Icons.email),
                fillColor: Colors.grey.shade50,
                filled: true,
                isDense: true,
                labelText: 'Your Email',
border: InputBorder.none,
            ),
          ),
          SizedBox(height: 20,),
          TextFormField(
            decoration: InputDecoration(
border: InputBorder.none,
                fillColor: Colors.grey.shade50,
                filled: true,
                isDense: true,
                suffixIcon: Icon(Icons.lock),
                labelText: 'New Password',
            ),
          ),
          SizedBox(height: 20,),
          TextFormField(
            decoration: InputDecoration(

                fillColor: Colors.grey.shade50,
                filled: true,
                isDense: true,
                suffixIcon: Icon(Icons.lock),
                labelText: 'Confirm Password',
              border: InputBorder.none
            ),
          ),
          SizedBox(height: 30,),
          ConstrainedBox(
              constraints: BoxConstraints.expand(height: 50),
              child: RaisedButton(onPressed: (){},
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4),
                ),
                color: Colors.lightGreen.shade700,
                child: Text('UPDATE', style: TextStyle(color: Colors.white, fontSize: 20,fontWeight: FontWeight.bold),
                ),
              )
          ),

        ],),
      ),
    );
  }
}
