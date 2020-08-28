
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

import 'SignIn.dart';

class Map2 extends StatefulWidget {
  @override
  _Map2State createState() => _Map2State();
}
class _Map2State extends State<Map2> {
  final TextEditingController _controller = new TextEditingController();
  var items = ['Working a lot harder', 'Being a lot smarter', 'Being a self-starter', 'Placed in charge of trading charter'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.shopping_cart,size: 30,),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(onTap: (){
              Navigator.push(context, MaterialPageRoute(
                  builder: (context)=>SignIn()));
            },
                child: Icon(Icons.person,size: 30,)),
          )
        ],
        title: Text('SHISHA',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
        centerTitle: true,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(80),
          child: Padding(
            padding: const EdgeInsets.only(left: 50,right: 5,bottom: 12),

            child: Row(
              children: <Widget>[
                Expanded(child: txt1(controller: _controller)),
          new PopupMenuButton<String>(
            icon: const Icon(Icons.arrow_drop_down),
            onSelected: (String value) {
              _controller.text = value;
            },
            itemBuilder: (BuildContext context) {
              return items.map<PopupMenuItem<String>>((String value) {
                return new PopupMenuItem(child: new Text(value), value: value);
              }).toList();
            },)
              ],
            ),

          ),
        )
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Image.asset('assets/images/gmaps.png',fit: BoxFit.cover,),
      ),
      floatingActionButton: FloatingActionButton(onPressed: null,
        child: Icon(Icons.location_on),),
    );
  }
}


Widget txt1({TextEditingController controller}){
  return TextFormField(
    decoration: InputDecoration(
      fillColor: Colors.grey.shade50,
      filled: true,
      isDense: true,
      labelText: 'Your Location',
      border: new OutlineInputBorder(
        borderRadius: const BorderRadius.all(
          const Radius.circular(10.0),
        ),
      ),
      prefixIcon: Icon(Icons.location_on),
    ),
  );
}

