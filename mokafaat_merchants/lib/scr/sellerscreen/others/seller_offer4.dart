import 'package:flutter/material.dart';
import 'package:mokafaatmerchants/scr/widgets/coustome_drawer.dart';

class SellerOffer4 extends StatefulWidget {
  @override
  _SellerOffer4State createState() => _SellerOffer4State();
}

class _SellerOffer4State extends State<SellerOffer4> {
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
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text(
                    "العروض الخاصه بيا",
                    style: TextStyle(color: Colors.deepOrange[400]),
                  )
                ],
              ),
              ListView.builder(
                shrinkWrap: true,
                primary: false,
                itemCount: 3,
                itemBuilder: (ctx, int i) {
                  return Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      child: Column(
                        children: <Widget>[
                          Container(
                              height: 100,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: const AssetImage(
                                          'assets/imgs/help.png')))),
                          SizedBox(height: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text("option 3 : Deep Facial + Pore  199 SR"),
                              Text("Tightening + Skin Booster"),
                              Text("Purchased: 12  Redeemed 9"),
                            ],
                          )
                        ],
                      ));
                },
              ),
            ],
          ),
        ));
  }
}
