import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('SIGN UP'),
        centerTitle: true,

      ),


      body: SingleChildScrollView(
        padding:EdgeInsets.only(top: 10,right: 30,left: 30,bottom: 30),
        child: Column(crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
        Image.asset('assets/images/shisha-1.png',height: 130,width: 120,),

            TextFormField(
              decoration: InputDecoration(

                  fillColor: Colors.grey.shade50,
                  filled: true,
                  isDense: true,
                  labelText: 'First Name',
                 border: InputBorder.none
              ),
            ),
            SizedBox(height: 20,),
            TextFormField(
              decoration: InputDecoration(

                  fillColor: Colors.grey.shade50,
                  filled: true,
                  isDense: true,
                  labelText: 'Last Name',
border: InputBorder.none
              ),
            ),
            SizedBox(height: 20,),
            TextFormField(
              decoration: InputDecoration(

                  fillColor: Colors.grey.shade50,
                  filled: true,
                  isDense: true,
                  labelText: 'Email Address',
border: InputBorder.none
              ),
            ),
            SizedBox(height: 20,),
            TextFormField(
              decoration: InputDecoration(

                  fillColor: Colors.grey.shade50,
                  filled: true,
                  isDense: true,
                  labelText: 'Password',
border: InputBorder.none,
              ),
            ),
            SizedBox(height: 20,),
            Center(
              child: Text(
                'OR LOGIN WITH ',style: TextStyle(color
                  : Colors.lightGreen.shade400,fontSize: 20),),
            ),
            SizedBox(width: 20),

            Center(child: Image.asset('assets/images/google-240.png',width: 40,height: 40,)),
            SizedBox(height: 20,),
            ConstrainedBox(
                constraints: BoxConstraints.expand(height: 50),
                child: RaisedButton(onPressed: (){},
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  color: Colors.lightGreen.shade700,
                  child: Text('CREATE ACCOUNT', style: TextStyle(color: Colors.white, fontSize: 20,fontWeight: FontWeight.bold),
                  ),
                )
            ),



          ],
        ),
      ),
    );
  }
}
