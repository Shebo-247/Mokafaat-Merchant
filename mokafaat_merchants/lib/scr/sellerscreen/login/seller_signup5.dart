import 'package:flutter/material.dart';
import 'package:mokafaatmerchants/scr/widgets/coustome_drawer.dart';

class SellerSignup5 extends StatefulWidget {
  @override
  _SellerSignup5State createState() => _SellerSignup5State();
}

class _SellerSignup5State extends State<SellerSignup5> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  bool _value = false;
  void _changeValue(val) {
    setState(() {
      _value = val;
    });
  }

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
                    ' عقد التاجر',
                    style: TextStyle(color: Theme.of(context).accentColor),
                  )
                ],
              ),
              SizedBox(height: 10),
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
                children: <Widget>[
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        SizedBox(height: 15),
                        Row(
                          // crossAxisAlignment: CrossAxisAlignment.end,
                          children: <Widget>[
                            Checkbox(value: _value, onChanged: _changeValue),
                            Text(
                              'تجديد تلقائي',
                              style: TextStyle(
                                  color: Theme.of(context).primaryColor),
                            ),
                          ],
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
                          'بدايه التاريخ',
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
                    'نهايه التاريخ',
                    style: TextStyle(color: Theme.of(context).primaryColor),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.46),
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
                padding: EdgeInsets.symmetric(vertical: 5),
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
                padding: EdgeInsets.symmetric(vertical: 5),
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
                    'الجوال',
                    style: TextStyle(color: Theme.of(context).primaryColor),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 5),
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
                    'البريد الالكتروني',
                    style: TextStyle(color: Theme.of(context).primaryColor),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 5),
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
              SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: RaisedButton(
                    color: Colors.deepOrange[700],
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12))),
                    onPressed: () {
                      Navigator.pushNamed(context, '/selleroffer4');
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
