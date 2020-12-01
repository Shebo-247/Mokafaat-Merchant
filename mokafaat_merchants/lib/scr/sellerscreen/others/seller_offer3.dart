import 'package:flutter/material.dart';
import 'package:mokafaatmerchants/scr/widgets/coustome_drawer.dart';

class SellerOffer3 extends StatefulWidget {
  @override
  _SellerOffer3State createState() => _SellerOffer3State();
}

class _SellerOffer3State extends State<SellerOffer3> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomPadding: false,
        resizeToAvoidBottomInset: false,
        key: _scaffoldKey,
        endDrawer: CustomDrawer(),
        appBar: AppBar(
          // title: Text(''),
          leading: IconButton(
              icon: Icon(Icons.arrow_back_ios),
              onPressed: () {
                Navigator.pop(context);
              }),
          centerTitle: true,
          actions: <Widget>[
            // IconButton(icon: Icon(Icons.location_on), onPressed: () {}),
            IconButton(
                icon: Icon(Icons.menu),
                onPressed: () {
                  _scaffoldKey.currentState.openEndDrawer();
                })
          ],
        ),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: ListView(
          children: <Widget>[
            Container(
              height: 150,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/imgs/help.png'))),
            ),
            SizedBox(height: 15),
            // Padding(
            //   padding: EdgeInsets.all(10),
            //   child: Column(
            //     children: <Widget>[
            //       Text("option 3: Deep Facial+ Pore")
            //     ],
            //   ),
            // ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.17),
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: RaisedButton(
                  color: Colors.deepOrange[700],
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12))),
                  onPressed: () {},
                  child: Text(
                    "مساعده",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "ارسال اسفسار",
                  style: TextStyle(color: Theme.of(context).primaryColor),
                )
              ],
            ),

            Padding(
              padding: EdgeInsets.symmetric(
                  vertical: 8,
                  horizontal: MediaQuery.of(context).size.width * 0.10),
              child: Container(
                  decoration: BoxDecoration(
                      color: Colors.grey[300],
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(5)),
                  child: TextField(
                                          autofocus: false,

                    decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: IconButton(
                            icon: Icon(Icons.arrow_back_ios),
                            onPressed: () {})),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
