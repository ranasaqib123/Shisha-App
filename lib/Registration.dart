import 'package:flutter/material.dart';



class Registration extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('PROFILE'),
        centerTitle: true,
      ),


      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: 5,left: 20,right: 20,bottom: 20),
        child: Column(
          children: <Widget>[
            Image.asset('assets/images/shisha-1.png',height: 110,width: 140,),

            SizedBox(height: 15,),
            reg1('City', Icons.account_balance),
            SizedBox(height: 15,),
            reg1('Name', Icons.person),
            SizedBox(height: 15,),
            Row(children: <Widget>[
              Expanded(child: reg1('Opening Time', Icons.timer)),
              SizedBox(width: 15,),
              Expanded(child: reg1('Closing Time', Icons.timer)),
            ],),
            SizedBox(height: 15,),
            reg1('Images', Icons.casino),
            SizedBox(height: 15,),
            reg1('Items', Icons.shopping_cart),
            SizedBox(height: 15,),
            reg1('Prices', Icons.money_off),
            SizedBox(height: 20,),

            ConstrainedBox(
                constraints: BoxConstraints.expand(height: 60),
                child: RaisedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context)=>Registration()));
                },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  color: Colors.lightGreen.shade700,
                  child: Text('REGISTERED', style: TextStyle(color: Colors.white, fontSize: 20,fontWeight: FontWeight.bold),
                  ),
                )
            ),
          ],
        ),
      ),
    );
  }
}


Widget reg1(String title,IconData icon){
  return  TextFormField(
    decoration: InputDecoration(
        filled: true,
        fillColor: Colors.grey.shade50,
        isDense: true,
        prefixIcon: Icon(icon
        ),
        suffixIcon: Icon(Icons.navigate_next),
        labelText:title,
border: InputBorder.none,

    ),
  );
}