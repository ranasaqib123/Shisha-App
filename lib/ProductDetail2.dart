import 'package:flutter/material.dart';
import 'Address.dart';

class ProductDetail2 extends StatefulWidget {
  @override
  _ProductDetail2State createState() => _ProductDetail2State();
}

class _ProductDetail2State extends State<ProductDetail2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(left: 20, right: 20, top: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: Text(
                "Shandar's Shisha  ",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'View Menu',
              style: TextStyle(color: Colors.orangeAccent),
            ),
            ListTile(
              dense: true,
              leading: Text('1'),
              title: Text('Special Deal'),
              subtitle: Text('Small'),
              trailing: Text('Rs, 80'),
            ),
            Divider(
              thickness: 1,
            ),
            Text(
              'Add Promo Code',
              style: TextStyle(color: Colors.orangeAccent),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: <Widget>[
                Text('Sub Total'),
                Spacer(),
                Text('Rs. 80'),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: <Widget>[
                Text('Delivery Fee'),
                Spacer(),
                Text('Rs. 19'),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: <Widget>[
                Text('Discount'),
                Spacer(),
                Text('Rs. 0'),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: <Widget>[
                Text('Service Fees'),
                Spacer(),
                Text('Rs. 0'),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: <Widget>[
                Text(
                  'Sale Tax',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Text(
                  'Rs. 0',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Divider(
              thickness: 1,
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: <Widget>[
                Text(
                  'Delivery Address',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Spacer(),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Address()));
                  },
                  child: Container(
                    child: Row(
                      children: <Widget>[
                        Text(
                          'Add Address',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Icon(Icons.navigate_next)
                      ],
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: <Widget>[
                Text(
                  'Delivery Time',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Text(
                  'Shedule at (N/A)',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Icon(Icons.navigate_next)
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: <Widget>[
                Text(
                  'Payment Method',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Image.network(
                  'https://cdn.propakistani.pk/wp-content/uploads/2018/09/paypal-900x506.png',
                  height: 60,
                  width: 110,
                ),
                Image.network(
                  'https://upload.wikimedia.org/wikipedia/commons/thumb/2/2a/Mastercard-logo.svg/200px-Mastercard-logo.svg.png',
                  height: 55,
                  width: 80,
                )
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Center(
              child: ConstrainedBox(
                  constraints: BoxConstraints.expand(
                    height: 50,
                  ),
                  child: RaisedButton(
                    onPressed: () {
//                    Navigator.push(context, MaterialPageRoute(
//                        builder: (context)=>ProductDetail2()));
                    },
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    color: Colors.lightGreen.shade700,
                    child: Text(
                      'Confirm Order',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
//  Widget time() {
//    return TimePickerSpinner(
//      is24HourMode: false,
//      normalTextStyle: TextStyle(
//          fontSize: 24,
//          color: Colors.deepOrange
//      ),
//      highlightedTextStyle: TextStyle(
//          fontSize: 24,
//          color: Colors.yellow
//      ),
//      spacing: 50,
//      itemHeight: 80,
//      isForce2Digits: true,
//      onTimeChange: (time) {
//        setState(() {
//        });
//      },
//    );
//  }}
