import 'package:flutter/material.dart';
import 'package:mokafaatmerchants/scr/widgets/coustome_drawer.dart';

class CodePage extends StatelessWidget {
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
            IconButton(icon: Icon(Icons.location_on), onPressed: () {}),
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
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: 15,
                  horizontal: MediaQuery.of(context).size.width * 0.14),
              child: Container(
                height: 200,
                decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(15)),
                    child: TextField(
                                            autofocus: false,

                      decoration: InputDecoration(
                        hintText: ""
                      ),
                    ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: RaisedButton(
                  color: Colors.deepOrange[700],
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12))),
                  onPressed: () {},
                  child: Text(
                    "قم بوضع الرمز داخل المربع",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
