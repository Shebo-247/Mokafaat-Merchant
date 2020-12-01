import 'package:flutter/material.dart';
import 'package:mokafaatmerchants/service/public_provider.dart';

import 'package:provider/provider.dart';

import 'conditionpage.dart';
import 'contactuspage.dart';
import 'howitworks.dart';
import 'payment_way.dart';
import 'privacyPage.dart';

class SetteingPage extends StatefulWidget {
  @override
  _SetteingPageState createState() => _SetteingPageState();
}

class _SetteingPageState extends State<SetteingPage> {
  @override
  Widget build(BuildContext context) {
    final homeProvider = Provider.of<PublicProvider>(context);
    if (homeProvider.langValue == 'Ar') {
      return Scaffold(
        appBar: AppBar(
          title: Text("الاعدادات"),
          centerTitle: true,
        ),
        body: Padding(
          padding: EdgeInsets.all(18),
          child: ListView(
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (ctx) => HowitWorksPage()));
                },
                child: Container(
                  height: 64,
                  child: Card(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      shadowColor: Colors.blue[50],
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Text("كيف يعمل التطبيق",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Theme.of(context).primaryColor)),
                          Icon(Icons.arrow_back_ios)
                        ],
                      )),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (ctx) => PrivacyPage()));
                },
                child: Container(
                  height: 64,
                  child: Card(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      shadowColor: Colors.blue[100],
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Text("سياسة الخصوصية",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Theme.of(context).primaryColor)),
                          Icon(Icons.arrow_back_ios)
                        ],
                      )),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (ctx) => ConditionPage()));
                },
                child: Container(
                  height: 64,
                  child: Card(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      shadowColor: Colors.blue[100],
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Text("البنود والاستخدام",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Theme.of(context).primaryColor)),
                          Icon(Icons.arrow_back_ios)
                        ],
                      )),
                ),
              ),
              //    GestureDetector(
              //   onTap: () {
              //     Navigator.push(context,
              //         MaterialPageRoute(builder: (ctx) => PaymentWaysPage()));
              //   },
              //   child: Container(
              //     height: 64,
              //     child: Card(
              //         elevation: 5,
              //         shape: RoundedRectangleBorder(
              //             borderRadius: BorderRadius.circular(15)),
              //         shadowColor: Colors.blue[100],
              //         child: Row(
              //           mainAxisAlignment: MainAxisAlignment.spaceAround,
              //           children: <Widget>[
              //             Text("طرق الدفع",
              //                 style: TextStyle(
              //                     fontSize: 16,
              //                     color: Theme.of(context).primaryColor)),
              //             Icon(Icons.arrow_back_ios)
              //           ],
              //         )),
              //   ),
              // ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (ctx) => ContactusPage()));
                },
                child: Container(
                  height: 64,
                  child: Card(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      shadowColor: Colors.blue[100],
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Text(
                            "اتصل بنا    ",
                            style: TextStyle(
                                fontSize: 16,
                                color: Theme.of(context).primaryColor),
                          ),
                          Icon(Icons.arrow_back_ios)
                        ],
                      )),
                ),
              )
            ],
          ),
        ),
      );
    } else {
      return Scaffold(
        appBar: AppBar(
          title: Text("Settings"),
          centerTitle: true,
        ),
        body: Padding(
          padding: EdgeInsets.all(18),
          child: ListView(
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (ctx) => HowitWorksPage()));
                },
                child: Container(
                  height: 64,
                  child: Card(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      shadowColor: Colors.blue[50],
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Icon(Icons.arrow_forward_ios),
                          Text("   How It Works",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Theme.of(context).primaryColor)),
                        ],
                      )),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (ctx) => PrivacyPage()));
                },
                child: Container(
                  height: 64,
                  child: Card(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      shadowColor: Colors.blue[100],
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Icon(Icons.arrow_forward_ios),
                          Text("   Privacy & Policy",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Theme.of(context).primaryColor)),
                        ],
                      )),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (ctx) => ConditionPage()));
                },
                child: Container(
                  height: 64,
                  child: Card(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      shadowColor: Colors.blue[100],
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Icon(Icons.arrow_forward_ios),
                          Text("Terms & Conditions ",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Theme.of(context).primaryColor)),
                        ],
                      )),
                ),
              ),
              //         GestureDetector(
              //   onTap: () {
              //     Navigator.push(context,
              //         MaterialPageRoute(builder: (ctx) => PaymentWaysPage()));
              //   },
              //   child: Container(
              //     height: 64,
              //     child: Card(
              //         elevation: 5,
              //         shape: RoundedRectangleBorder(
              //             borderRadius: BorderRadius.circular(15)),
              //         shadowColor: Colors.blue[100],
              //         child: Row(
              //           mainAxisAlignment: MainAxisAlignment.spaceAround,
              //           children: <Widget>[
              //             Icon(Icons.arrow_forward_ios),
              //             Text("      Payment Ways  ",
              //                 style: TextStyle(
              //                     fontSize: 16,
              //                     color: Theme.of(context).primaryColor)),
              //           ],
              //         )),
              //   ),
              // ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (ctx) => ContactusPage()));
                },
                child: Container(
                  height: 64,
                  child: Card(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      shadowColor: Colors.blue[100],
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Icon(Icons.arrow_forward_ios),
                          Text(
                            "  Contact us           ",
                            style: TextStyle(
                                fontSize: 16,
                                color: Theme.of(context).primaryColor),
                          ),
                        ],
                      )),
                ),
              )
            ],
          ),
        ),
      );
    }
  }
}
