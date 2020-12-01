import 'package:flutter/material.dart';
import 'package:mokafaatmerchants/scr/widgets/coustome_drawer.dart';

class SellerOffer extends StatefulWidget {
  @override
  SellerOfferState createState() => SellerOfferState();
}

class SellerOfferState extends State<SellerOffer> {
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
              children: <Widget>[Text("عرض اضافه",style: TextStyle(color: Theme.of(context).primaryColor),)],
            ),
            Container(
              height: 150,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/imgs/help.png'))),
            ),
                        SizedBox(height: 10),

            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    height: 25,
                    width: MediaQuery.of(context).size.width * 0.43,
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(5)),
                    child: TextField(
                                            autofocus: false,

                      decoration: InputDecoration(border: InputBorder.none),
                    ),
                  ),
                  Text(
                    "تحميل صوره العرض",
                    textAlign: TextAlign.right,
                    style: TextStyle(color: Theme.of(context).primaryColor),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    height: 25,
                    width: MediaQuery.of(context).size.width * 0.43,
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(5)),
                    child: TextField(
                                            autofocus: false,

                      decoration: InputDecoration(border: InputBorder.none),
                    ),
                  ),
                  Text(
                    "مواصفات العرض",
                    textAlign: TextAlign.right,
                    style: TextStyle(color: Theme.of(context).primaryColor),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    height: 25,
                    width: MediaQuery.of(context).size.width * 0.43,
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(5)),
                    child: TextField(
                                            autofocus: false,

                      decoration: InputDecoration(border: InputBorder.none),
                    ),
                  ),
                  Text(
                    "السعر النهائي بعد الخصم",
                    textAlign: TextAlign.right,
                    style: TextStyle(color: Theme.of(context).primaryColor),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    height: 25,
                    width: MediaQuery.of(context).size.width * 0.43,
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(5)),
                    child: TextField(
                                            autofocus: false,

                      decoration: InputDecoration(border: InputBorder.none),
                    ),
                  ),
                  Text(
                    "سعر العرض",
                    textAlign: TextAlign.right,
                    style: TextStyle(color: Theme.of(context).primaryColor),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    height: 25,
                    width: MediaQuery.of(context).size.width * 0.43,
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(5)),
                    child: TextField(
                                            autofocus: false,

                      decoration: InputDecoration(border: InputBorder.none),
                    ),
                  ),
                  Text(
                    "قيمه الخصم",
                    textAlign: TextAlign.right,
                    style: TextStyle(color: Theme.of(context).primaryColor),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    height: 25,
                    width: MediaQuery.of(context).size.width * 0.43,
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(5)),
                    child: TextField(
                      
                                            autofocus: false,

                      decoration: InputDecoration(border: InputBorder.none),
                    ),
                  ),
                  Text(
                    "السعر النهائي بعد الخصم",
                    textAlign: TextAlign.right,
                    style: TextStyle(color: Theme.of(context).primaryColor),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    height: 25,
                    width: MediaQuery.of(context).size.width * 0.43,
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(5)),
                    child: TextField(
                                            autofocus: false,

                      decoration: InputDecoration(border: InputBorder.none),
                    ),
                  ),
                  Text(
                    "ناريخ بدايه العرض",
                    textAlign: TextAlign.right,
                    style: TextStyle(color: Theme.of(context).primaryColor),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    height: 25,
                    width: MediaQuery.of(context).size.width * 0.43,
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(5)),
                    child: TextField(
                                            autofocus: false,

                      decoration: InputDecoration(border: InputBorder.none),
                    ),
                  ),
                  Text(
                    "ناريخ نهايه العرض",
                    textAlign: TextAlign.right,
                    style: TextStyle(color: Theme.of(context).primaryColor),
                  )
                ],
              ),
            ),
            SizedBox(height: 15),
            Row(children: <Widget>[
                Expanded(
                                  child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: RaisedButton(
                    color: Colors.deepOrange[700],
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12))),
                    onPressed: () {},
                    child: Text(
                      "ارسال",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                  ),
              ),
            ),
                ),
              Expanded(
                              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: RaisedButton(
                    color: Colors.deepOrange[700],
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12))),
                    onPressed: () {},
                    child: Text(
                      "حفظ",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                  ),
                ),
            ),
              ),
            ],)
          ],
        ),
      ),
    );
  }
}
