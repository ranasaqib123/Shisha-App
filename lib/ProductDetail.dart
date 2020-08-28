import 'dart:developer';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shisha/Counter.dart';

import 'ProductDetail2.dart';

class ProductDetail extends StatefulWidget {
  @override
  _ProductDetailState createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
//              margin: EdgeInsets.all(20),
//            padding: EdgeInsets.all(20),
                height: 170,
                decoration: BoxDecoration(),
                child: Center(
                    child: Image.asset(
                      'assets/images/sh-4.jpg',
                      fit: BoxFit.cover,
                      width: MediaQuery.of(context).size.width,
                    ))),
            SizedBox(
              height: 7,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, top: 10, right: 15),
              child: Row(
                children: <Widget>[
                  Text(
                    "SM Shisha's",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Icon(Icons.favorite_border)
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Row(
                children: <Widget>[
                  Text(
                    '4.0',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
                  ),
                  SizedBox(width: 5),
                  Icon(
                    Icons.star,
                    size: 20,
                    color: Colors.red,
                  ),
                  SizedBox(width: 5),
                  Text(
                    '(4  ratings)',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
                  ),
                  SizedBox(width: 12),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Divider(
              thickness: 1,
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Text(
                          'SM Pann',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Spacer(),
                        Counter(),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Rs. 174',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          'SM Mint',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Spacer(),
                        Counter(),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Rs. 216',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          'SM Bluberry',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Spacer(),
                        Counter(),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Rs. 228',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          'SM Lawa',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Spacer(),
                        Counter(),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Rs. 110',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          'SM Cocktail',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Spacer(),
                        Counter(),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Rs. 312',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          'SM Peach',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Spacer(),
                        Counter(),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Rs. 300',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: ConstrainedBox(
                          constraints:
                              BoxConstraints.expand(height: 40, width: 160),
                          child: RaisedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ProductDetail2()));
                            },
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            color: Colors.lightGreen.shade700,
                            child: Text(
                              'ADD CART',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          )),
                    ),
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}
