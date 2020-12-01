import 'package:flutter/material.dart';
import 'package:mokafaatmerchants/scr/home/home.dart';
import 'package:mokafaatmerchants/scr/widgets/coustome_drawer.dart';

class SellerSignup3 extends StatefulWidget {
  @override
  _SellerSignup3State createState() => _SellerSignup3State();
}

class _SellerSignup3State extends State<SellerSignup3> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        padding: EdgeInsets.all(20),
        child: Form(
          child: ListView(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text(
                    'بيانات التاجر',
                    style: TextStyle(color: Theme.of(context).accentColor),
                  )
                ],
              ),
              SizedBox(height: 5),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Text(
                            'رقم السجل التجاري',
                            style: TextStyle(
                                color: Theme.of(context).primaryColor),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 5),
                          child: Container(
                            height: 30,
                            decoration: BoxDecoration(
                                color: Colors.grey[300],
                                border: Border.all(
                                    color: Theme.of(context).primaryColor)),
                            child: TextFormField(
                              textAlign: TextAlign.right,
                              decoration:
                                  InputDecoration(border: InputBorder.none),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 15),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Text(
                          'اسم الشركه',
                          style:
                              TextStyle(color: Theme.of(context).primaryColor),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 5),
                          child: Container(
                            height: 30,
                            decoration: BoxDecoration(
                                color: Colors.grey[300],
                                border: Border.all(
                                    color: Theme.of(context).primaryColor)),
                            child: TextFormField(
                              textAlign: TextAlign.right,
                              decoration:
                                  InputDecoration(border: InputBorder.none),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text(
                    'الاسم التجاري للشركه',
                    style: TextStyle(color: Theme.of(context).primaryColor),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 8),
                child: Container(
                  height: 30,
                  decoration: BoxDecoration(
                      color: Colors.grey[300],
                      border:
                          Border.all(color: Theme.of(context).primaryColor)),
                  child: TextFormField(
                    textAlign: TextAlign.right,
                    decoration: InputDecoration(border: InputBorder.none),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text(
                    'رقم هاتف الشركه',
                    style: TextStyle(color: Theme.of(context).primaryColor),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 8),
                child: Container(
                  height: 30,
                  decoration: BoxDecoration(
                      color: Colors.grey[300],
                      border:
                          Border.all(color: Theme.of(context).primaryColor)),
                  child: TextFormField(
                    textAlign: TextAlign.right,
                    decoration: InputDecoration(border: InputBorder.none),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text(
                    "اسم المدير المسؤول",
                    style: TextStyle(color: Theme.of(context).primaryColor),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 8),
                child: Container(
                  height: 30,
                  decoration: BoxDecoration(
                      color: Colors.grey[300],
                      border:
                          Border.all(color: Theme.of(context).primaryColor)),
                  child: TextFormField(
                    textAlign: TextAlign.right,
                    decoration: InputDecoration(border: InputBorder.none),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text(
                    'جوال المنسق',
                    style: TextStyle(color: Theme.of(context).primaryColor),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 8),
                child: Container(
                  height: 30,
                  decoration: BoxDecoration(
                      color: Colors.grey[300],
                      border:
                          Border.all(color: Theme.of(context).primaryColor)),
                  child: TextFormField(
                    textAlign: TextAlign.right,
                    decoration: InputDecoration(border: InputBorder.none),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text(
                    'البريد الالكتروني للشركه',
                    style: TextStyle(color: Theme.of(context).primaryColor),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 8),
                child: Container(
                  height: 30,
                  decoration: BoxDecoration(
                      color: Colors.grey[300],
                      border:
                          Border.all(color: Theme.of(context).primaryColor)),
                  child: TextFormField(
                    textAlign: TextAlign.right,
                    decoration: InputDecoration(border: InputBorder.none),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: RaisedButton(
                    color: Colors.deepOrange[700],
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12))),
                    onPressed: () {
                      Navigator.push(
                        context,
                        PageRouteBuilder(
                          pageBuilder: (c, a1, a2) => HomeScreen(),
                          transitionsBuilder: (c, anim, a2, child) =>
                              FadeTransition(opacity: anim, child: child),
                          transitionDuration: Duration(milliseconds: 300),
                        ),
                      );
                    },
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
            ],
          ),
        ),
      ),
    );
  }
}
