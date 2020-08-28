import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class Order1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
//         backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text('Order'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Order',
              style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              'Driver license number is needed if driver has'
              ' registered a car,For bicycle it is not'
              ' necessary',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            order2(
              Icons.check,
            ),
            SizedBox(height: 20),
            order2(Icons.check),
            SizedBox(height: 20),
            order2(Icons.cancel),
            SizedBox(height: 20),
            order2(Icons.check),
          ],
        ),
      ),
    );
  }

  Widget order2(IconData icon) {
    return DottedBorder(
      dashPattern: [6, 6, 6, 6],
      radius: Radius.circular(15),
      color: Colors.black,
      strokeWidth: 0,
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(12)),
        child: Container(
          height: 110,
          decoration: BoxDecoration(),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Text(
                      'Invoice No: 30WT43GD54',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 7),
                    Icon(
                      Icons.note_add,
                      size: 17,
                    ),
                    Spacer(),
                    Text(
                      '\$25.13',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: <Widget>[
                    Text(
                      'Delivery To',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 7),
                    Text(
                      '02113,71,Charter str.,',
                      style: TextStyle(fontWeight: FontWeight.w300),
                    ),
                    Spacer(),
                    Text(
                      'Pending',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: <Widget>[
                    Text(
                      'App 5r, Boston MA, USA',
                      style: TextStyle(fontWeight: FontWeight.w300),
                    ),
                    Spacer(),
                    CircleAvatar(
                      radius: 13,
                      backgroundColor: Colors.lightGreen,
                      child: Icon(
                        icon,
                        color: Colors.white,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
