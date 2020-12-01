import 'package:flutter/material.dart';
import 'package:mokafaatmerchants/scr/sellerscreen/login/seller_signup4.dart';
import 'package:mokafaatmerchants/scr/widgets/coustome_drawer.dart';
import 'package:mokafaatmerchants/service/public_provider.dart';
import 'package:provider/provider.dart';

import 'seller_signup3.dart';

class SellerSignup2 extends StatefulWidget {
  @override
  _SellerSignup2State createState() => _SellerSignup2State();
}

class _SellerSignup2State extends State<SellerSignup2> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  TextEditingController _name = TextEditingController();
  TextEditingController _email = TextEditingController();
  TextEditingController _phone = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final pubProv = Provider.of<PublicProvider>(context);
    if (pubProv.langValue == 'Ar') {
      return Scaffold(
        key: _scaffoldKey,
        // endDrawer: CustomDrawer(),
        appBar: AppBar(
          // title: Text(''),
          leading: IconButton(
              icon: Icon(Icons.arrow_back_ios),
              onPressed: () {
                Navigator.pop(context);
              }),
          centerTitle: true,
          // actions: <Widget>[
          //   // IconButton(icon: Icon(Icons.location_on), onPressed: () {}),
          //   IconButton(
          //       icon: Icon(Icons.menu),
          //       onPressed: () {
          //         _scaffoldKey.currentState.openEndDrawer();
          //       })
          // ],
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
                      'انضم الينا كتاجر',
                      style: TextStyle(color: Theme.of(context).accentColor),
                    )
                  ],
                ),
                SizedBox(height: 10),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.end,
                //   children: <Widget>[
                //     Text(
                //       'اسم الشركه كما في السجل',
                //       style: TextStyle(color: Theme.of(context).primaryColor),
                //     )
                //   ],
                // ),
                // Padding(
                //   padding: EdgeInsets.symmetric(vertical: 8),
                //   child: Container(
                //     height: 30,
                //     decoration: BoxDecoration(
                //         color: Colors.grey[300],
                //         border:
                //             Border.all(color: Theme.of(context).primaryColor)),
                //     child: TextFormField(
                //       textAlign: TextAlign.right,
                //       decoration: InputDecoration(border: InputBorder.none),
                //     ),
                //   ),
                // ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Text(
                      'اسم الشركه التجاري',
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
                      controller: _name,
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
                      controller: _phone,
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.right,
                      decoration: InputDecoration(border: InputBorder.none),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Text(
                      "اختر المدينه",
                      style: TextStyle(color: Theme.of(context).primaryColor),
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 8),
                  child: Container(
                    height: 30,
                    padding: EdgeInsets.symmetric(horizontal: 8.5),
                    decoration: BoxDecoration(
                        color: Colors.grey[300],
                        border:
                            Border.all(color: Theme.of(context).primaryColor)),
                    child: DropdownButton(
                      elevation: 0,
                      autofocus: false,
                      underline: SizedBox(),
                      iconDisabledColor: Theme.of(context).primaryColor,
                      iconSize: 30,
                      iconEnabledColor: Theme.of(context).primaryColor,
                      isDense: false,
                      isExpanded: true,
                      hint: Text(
                        pubProv.cityName.toString(),
                        style: TextStyle(color: Theme.of(context).primaryColor),
                      ),
                      items: pubProv.allCitiesAR
                          .map<DropdownMenuItem<dynamic>>((item) {
                        return DropdownMenuItem(
                          child: Text(item['EnName'],
                              style: TextStyle(
                                  color: Theme.of(context).primaryColor)),
                          value: item['CityID'] == null
                              ? item['EnName']
                              : item['CityID'],
                        );
                      }).toList(),
                      value: pubProv.cityID,
                      onChanged: (val) {
                        pubProv.cityID = val;
                        setState(() {});
                      },
                    ),
                  ),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Text(
                      'البريد الاكتروني',
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
                      controller: _email,
                      keyboardType: TextInputType.emailAddress,
                      textAlign: TextAlign.right,
                      decoration: InputDecoration(border: InputBorder.none),
                    ),
                  ),
                ),
                SizedBox(height: 10),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    child: RaisedButton(
                      color: Colors.deepOrange[700],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(12))),
                      onPressed: () {
                        pubProv.joinAsMerchant(
                            _name.text, _email.text, _phone.text, context);
                        // Navigator.push(
                        //   context,
                        //   PageRouteBuilder(
                        //     pageBuilder: (c, a1, a2) => SellerSignup3(),
                        //     transitionsBuilder: (c, anim, a2, child) =>
                        //         FadeTransition(opacity: anim, child: child),
                        //     transitionDuration: Duration(milliseconds: 300),
                        //   ),
                        // );
                      },
                      child: Text(
                        "ارسل الطلب",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                    ),
                  ),
                ),
                // Padding(
                //   padding: const EdgeInsets.symmetric(horizontal: 10),
                //   child: Container(
                //     width: MediaQuery.of(context).size.width,
                //     child: RaisedButton(
                //       color: Colors.deepOrange[700],
                //       shape: RoundedRectangleBorder(
                //           borderRadius: BorderRadius.all(Radius.circular(12))),
                //       onPressed: () {},
                //       child: Text(
                //         "الغاء الطلب",
                //         style: TextStyle(
                //             color: Colors.white,
                //             fontWeight: FontWeight.bold,
                //             fontSize: 18),
                //       ),
                //     ),
                //   ),
                // ),
              ],
            ),
          ),
        ),
      );
    } else {
      return Scaffold(
        key: _scaffoldKey,
        // drawer: CustomDrawer(),
        appBar: AppBar(
          leading: IconButton(
              icon: Icon(Icons.arrow_back_ios),
              onPressed: () {
                Navigator.pop(context);
              }),
          centerTitle: true,
   
        ),
        body: Padding(
          padding: EdgeInsets.all(20),
          child: Form(
            child: ListView(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Join as merchant',
                      style: TextStyle(color: Theme.of(context).accentColor),
                    )
                  ],
                ),
                SizedBox(height: 10),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.end,
                //   children: <Widget>[
                //     Text(
                //       'اسم الشركه كما في السجل',
                //       style: TextStyle(color: Theme.of(context).primaryColor),
                //     )
                //   ],
                // ),
                // Padding(
                //   padding: EdgeInsets.symmetric(vertical: 8),
                //   child: Container(
                //     height: 30,
                //     decoration: BoxDecoration(
                //         color: Colors.grey[300],
                //         border:
                //             Border.all(color: Theme.of(context).primaryColor)),
                //     child: TextFormField(
                //       textAlign: TextAlign.right,
                //       decoration: InputDecoration(border: InputBorder.none),
                //     ),
                //   ),
                // ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Company name',
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
                      controller: _name,
                      textAlign: TextAlign.left,
                      decoration: InputDecoration(border: InputBorder.none),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Company phone number',
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
                      controller: _phone,
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.left,
                      decoration: InputDecoration(border: InputBorder.none),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Choose a city",
                      style: TextStyle(color: Theme.of(context).primaryColor),
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 8),
                  child: Container(
                    height: 30,
                    padding: EdgeInsets.symmetric(horizontal: 8.5),
                    decoration: BoxDecoration(
                        color: Colors.grey[300],
                        border:
                            Border.all(color: Theme.of(context).primaryColor)),
                    child: DropdownButton(
                      elevation: 0,
                      autofocus: false,
                      underline: SizedBox(),
                      iconDisabledColor: Theme.of(context).primaryColor,
                      iconSize: 30,
                      iconEnabledColor: Theme.of(context).primaryColor,
                      isDense: false,
                      isExpanded: true,
                      hint: Text(
                        pubProv.cityName.toString(),
                        style: TextStyle(color: Theme.of(context).primaryColor),
                      ),
                      items: pubProv.allCitiesEN
                          .map<DropdownMenuItem<dynamic>>((item) {
                        return DropdownMenuItem(
                          child: Text(item['EnName'],
                              style: TextStyle(
                                  color: Theme.of(context).primaryColor)),
                          value: item['CityID'] == null
                              ? item['EnName']
                              : item['CityID'],
                        );
                      }).toList(),
                      value: pubProv.cityID,
                      onChanged: (val) {
                        pubProv.cityID = val;
                        setState(() {});
                      },
                    ),
                  ),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Email Address',
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
                      controller: _email,
                      keyboardType: TextInputType.emailAddress,
                      textAlign: TextAlign.left,
                      decoration: InputDecoration(border: InputBorder.none),
                    ),
                  ),
                ),
                SizedBox(height: 10),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    child: RaisedButton(
                      color: Colors.deepOrange[700],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(12))),
                      onPressed: () {
                        pubProv.joinAsMerchant(
                            _name.text, _email.text, _phone.text, context);
                        // Navigator.push(
                        //   context,
                        //   PageRouteBuilder(
                        //     pageBuilder: (c, a1, a2) => SellerSignup3(),
                        //     transitionsBuilder: (c, anim, a2, child) =>
                        //         FadeTransition(opacity: anim, child: child),
                        //     transitionDuration: Duration(milliseconds: 300),
                        //   ),
                        // );
                      },
                      child: Text(
                        "Send Request",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                    ),
                  ),
                ),
                // Padding(
                //   padding: const EdgeInsets.symmetric(horizontal: 10),
                //   child: Container(
                //     width: MediaQuery.of(context).size.width,
                //     child: RaisedButton(
                //       color: Colors.deepOrange[700],
                //       shape: RoundedRectangleBorder(
                //           borderRadius: BorderRadius.all(Radius.circular(12))),
                //       onPressed: () {},
                //       child: Text(
                //         "الغاء الطلب",
                //         style: TextStyle(
                //             color: Colors.white,
                //             fontWeight: FontWeight.bold,
                //             fontSize: 18),
                //       ),
                //     ),
                //   ),
                // ),
              ],
            ),
          ),
        ),
      );
    }
  }
}
