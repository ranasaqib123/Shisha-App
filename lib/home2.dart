import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'DeliveryBoy.dart';
import 'ProductDetail.dart';
import 'Registration.dart';
import 'SignIn.dart';


class Home2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Image.asset(
          'assets/images/shisha-1.png',
          height: 60,
          width: 70,
        ),
      ),
      drawer: Drawer(
          elevation: 15,
          child: Container(
            color: Colors.white,
            child: ListView(
              children: <Widget>[
                Center(
                  child: Image.asset(
                    'assets/images/shisha-1.png',
                    width: 170,
                    height: 120,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'Shop/Partner Name',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),

//            UserAccountsDrawerHeader(decoration: BoxDecoration(color: Colors.white),
//              currentAccountPicture: CircleAvatar(radius: 35, backgroundColor: Colors.grey.shade200,),
//              accountName: Text('Shop/Partner Name',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.black),),
//            ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => DeliveryBoy()));
                  },
                  child: ListTile(
                    leading: Icon(Icons.perm_identity),
                    title: Text(
                      'Login As Delivery Boy',
                      style: TextStyle(fontWeight: FontWeight.w300),
                    ),
                  ),
                ),

                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SignIn()));
                  },
                  child: ListTile(
                    leading: Icon(Icons.account_balance),
                    title: Text('Login Bar',
                        style: TextStyle(fontWeight: FontWeight.w300)),
                  ),
                ),

                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Registration()));
                  },
                  child: ListTile(
                    leading: Icon(Icons.email),
                    title: Text('User Login',
                        style: TextStyle(fontWeight: FontWeight.w300)),
                  ),
                ),

                GestureDetector(
                  onTap: () {
//                  Navigator.push(context, MaterialPageRoute(
//                      builder: (context)=>Orders()));
                  },
                  child: ListTile(
                    leading: Icon(Icons.phone),
                    title: Text('Contact Us',
                        style: TextStyle(fontWeight: FontWeight.w300)),
                  ),
                ),

                GestureDetector(
                  onTap: () {
//                Navigator.push(context, MaterialPageRoute(builder:
//                    (context)=>GetStack1()));
                  },
                  child: ListTile(
                    leading: Icon(Icons.ac_unit),
                    title: Text('FAQ',
                        style: TextStyle(fontWeight: FontWeight.w300)),
                  ),
                ),

                GestureDetector(
                  onTap: () {
//                Navigator.push(context, MaterialPageRoute(builder:
//                    (context)=>GetStack1()));
                  },
                  child: ListTile(
                    leading: Icon(Icons.category),
                    title: Text('Terms & Conditions',
                        style: TextStyle(fontWeight: FontWeight.w300)),
                  ),
                ),

                GestureDetector(
                  onTap: () {
//                Navigator.push(context, MaterialPageRoute(builder:
//                    (context)=>GetStack1()));
                  },
                  child: ListTile(
                    leading: Icon(Icons.category),
                    title: Text('Privacy Policy',
                        style: TextStyle(fontWeight: FontWeight.w300)),
                  ),
                ),

                SizedBox(
                  height: 30,
                ),

                ExpansionTile(
                  leading: Icon(
                    Icons.person,
                    size: 30,
                  ),
                  title: Text(
                    "My Account",
                    style:
                        TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                  ),
                  backgroundColor: Colors.lightBlue,
                  children: <Widget>[
                    Text('data'),
                    SizedBox(
                      height: 7,
                    ),
                    Text('data'),
                    SizedBox(
                      height: 7,
                    ),
                    Text('data'),
                    SizedBox(
                      height: 7,
                    ),
                    Text('data'),
                    SizedBox(
                      height: 7,
                    ),
                    Text('data'),
                    SizedBox(
                      height: 7,
                    ),
                    Text('data'),
                    SizedBox(
                      height: 7,
                    ),
                    Text('data'),
                  ],
                ),

                Divider(
                  height: 0,
                  color: Colors.grey.shade300,
                ),

                ExpansionTile(
                  leading: Icon(
                    Icons.people,
                    size: 30,
                  ),
                  title: Text(
                    "Administration",
                    style:
                        TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                  ),
                ),
                Divider(
                  height: 0,
                  color: Colors.grey.shade300,
                ),
                ExpansionTile(
                  leading: Icon(
                    Icons.settings,
                    size: 30,
                  ),
                  title: Text(
                    "Settings",
                    style:
                        TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                  ),
                ),
                Divider(
                  height: 0,
                  color: Colors.grey.shade300,
                ),
              ],
            ),
          )),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
//              margin: EdgeInsets.all(20),
//            padding: EdgeInsets.all(20),
                height: 170,
                decoration: BoxDecoration(),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ProductDetail()));
                  },
                  child: Center(
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child:  Image.asset(
                            'assets/images/sh-1.webp',
                            fit: BoxFit.cover,
                            width: MediaQuery.of(context).size.width,
                          ),

                          )),
                )),
            SizedBox(
              height: 7,
            ),
            Text(
              'Canteena   247',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: <Widget>[
                Text(
                  '4.0',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
                ),
                SizedBox(width: 5),
                Icon(
                  Icons.star,
                  size: 20,
                ),
                SizedBox(width: 5),
                Text(
                  '(3)',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
                ),
                SizedBox(width: 12),
                Text(
                  '3.9 Kms',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  'Rs. 19  Delivery',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Container(
//              margin: EdgeInsets.all(20),
//            padding: EdgeInsets.all(20),
                height: 170,
                decoration: BoxDecoration(),
                child: Center(
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                       child: Image.asset(
                         'assets/images/sh-2.webp',
                         fit: BoxFit.cover,
                         width: MediaQuery.of(context).size.width,
                       ),
//                          fit: BoxFit.cover,
//                          width: MediaQuery.of(context).size.width,
                        ))),
            SizedBox(
              height: 7,
            ),
            Text(
              'Canteena   247',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: <Widget>[
                Text(
                  '4.0',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
                ),
                SizedBox(width: 5),
                Icon(
                  Icons.star,
                  size: 20,
                ),
                SizedBox(width: 5),
                Text(
                  '(3)',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
                ),
                SizedBox(width: 12),
                Text(
                  '3.9 Kms',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  'Rs. 19  Delivery',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Container(
//              margin: EdgeInsets.all(20),
//            padding: EdgeInsets.all(20),
                height: 170,
                decoration: BoxDecoration(),
                child: Center(
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          'assets/images/sh-3.webp',
                          fit: BoxFit.cover,
                          width: MediaQuery.of(context).size.width,
                        ),))),
            SizedBox(
              height: 7,
            ),
            Text(
              'Canteena   247',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: <Widget>[
                Text(
                  '4.0',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
                ),
                SizedBox(width: 5),
                Icon(
                  Icons.star,
                  size: 20,
                ),
                SizedBox(width: 5),
                Text(
                  '(3)',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
                ),
                SizedBox(width: 12),
                Text(
                  '3.9 Kms',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  'Rs. 19  Delivery',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Container(
//              margin: EdgeInsets.all(20),
//            padding: EdgeInsets.all(20),
                height: 170,
                decoration: BoxDecoration(),
                child: Center(
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          'assets/images/sh-4.jpg',
                          fit: BoxFit.cover,
                          width: MediaQuery.of(context).size.width,
                        ),))),
            SizedBox(
              height: 7,
            ),
            Text(
              'Canteena   247',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: <Widget>[
                Text(
                  '4.0',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
                ),
                SizedBox(width: 5),
                Icon(
                  Icons.star,
                  size: 20,
                ),
                SizedBox(width: 5),
                Text(
                  '(3)',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
                ),
                SizedBox(width: 12),
                Text(
                  '3.9 Kms',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  'Rs. 19  Delivery',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
                )
              ],
            ),
          ],
        ),
      ),
//

      bottomNavigationBar:CurvedNavigationBar(
        items: <Widget>[
        Icon(Icons.search, size: 30),
        Icon(Icons.home, size: 30),
        Icon(Icons.shopping_cart, size: 30),
        ],
        backgroundColor: Colors.white,
        color: Colors.lightGreen.shade700,
        buttonBackgroundColor: Colors.white,


        //        currentIndex: _selectedTabIndex,
//        onTap: _changeIndex,
//        items: [
//          BottomNavigationBarItem(icon: Icon(Icons.search), title: Text("")),
//          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("")),
//          BottomNavigationBarItem(
//              icon: GestureDetector(
//                  onTap: () {
//                    Navigator.push(context,
//                        MaterialPageRoute(builder: (context) => TabNav1()));
//                  },
//                  child: Icon(Icons.shopping_cart)),
//              title: Text("")),
//        ],
    ),
    );
  }
}
