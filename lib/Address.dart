import 'package:flutter/material.dart';

class Address extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
backgroundColor: Colors.white,
      appBar: AppBar(),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            Text('Add Address Details',style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold),),
            SizedBox(height: 20,),
            TextFormField(
              decoration: InputDecoration(

                  fillColor: Colors.grey.shade50,
                  filled: true,
                  isDense: true,
                  labelText: 'City',
                  border: InputBorder.none
              ),
            ),
            SizedBox(height: 20,),
            TextFormField(
              decoration: InputDecoration(

                  fillColor: Colors.grey.shade50,
                  filled: true,
                  isDense: true,
                  labelText: 'Area',
                  border: InputBorder.none
              ),
            ),
            SizedBox(height: 20,),
            TextFormField(
              decoration: InputDecoration(

                  fillColor: Colors.grey.shade50,
                  filled: true,
                  isDense: true,
                  labelText: 'Address',
                  border: InputBorder.none
              ),
            ),
            SizedBox(height: 20,),
ListTile(
  leading: Icon(Icons.home),
  title: Icon(Icons.work),
  trailing: Icon(Icons.devices_other),
),
            TextFormField(
              decoration: InputDecoration(

                  fillColor: Colors.grey.shade50,
                  filled: true,
                  isDense: true,
                  labelText: 'Add Custom label',
                  border: InputBorder.none
              ),
            ),
            SizedBox(height: 20,),
            TextFormField(
              decoration: InputDecoration(

                  fillColor: Colors.grey.shade50,
                  filled: true,
                  isDense: true,
                  labelText: 'Address Instructions',
                  border: InputBorder.none
              ),
            ),
            SizedBox(height: 30,),
            ConstrainedBox(
                constraints: BoxConstraints.expand(height: 50,),
                child: RaisedButton(onPressed: (){
//                    Navigator.push(context, MaterialPageRoute(
//                        builder: (context)=>ProductDetail2()));
                },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  color: Colors.lightGreen.shade700,
                  child: Text('Confirm Address', style: TextStyle(color: Colors.white, fontSize: 20,fontWeight: FontWeight.bold),
                  ),
                )
            ),

          ],
        ),
      ),

    );
  }
}
