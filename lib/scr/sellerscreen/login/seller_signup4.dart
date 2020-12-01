import 'package:flutter/material.dart';
import 'package:mokafaatmerchants/scr/widgets/coustome_drawer.dart';
import 'package:mokafaatmerchants/service/public_provider.dart';
import 'package:provider/provider.dart';

class SellerSignup4 extends StatefulWidget {
  @override
  _SellerSignup4State createState() => _SellerSignup4State();
}

class _SellerSignup4State extends State<SellerSignup4> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  TextEditingController _companyName = TextEditingController();
  TextEditingController _companyCommercailName = TextEditingController();
  TextEditingController _email = TextEditingController();
  TextEditingController _helpType = TextEditingController();
  TextEditingController _other = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final pubProv = Provider.of<PublicProvider>(context);
    if (pubProv.langValue == 'Ar') {
      return Scaffold(
        key: _scaffoldKey,
        endDrawer: CustomDrawer(),
        appBar: AppBar(
          leading: IconButton(
              icon: Icon(Icons.arrow_back_ios),
              onPressed: () {
                Navigator.pop(context);
              }),
          centerTitle: true,
          actions: <Widget>[
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
                      'مساعده',
                      style: TextStyle(color: Theme.of(context).accentColor),
                    )
                  ],
                ),
                // SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Text(
                      'اسم الشركه كما في السجل',
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
                      controller: _companyName,
                      textAlign: TextAlign.right,
                      decoration: InputDecoration(border: InputBorder.none),
                    ),
                  ),
                ),
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
                  padding: EdgeInsets.symmetric(vertical: 5),
                  child: Container(
                    height: 30,
                    decoration: BoxDecoration(
                        color: Colors.grey[300],
                        border:
                            Border.all(color: Theme.of(context).primaryColor)),
                    child: TextFormField(
                      controller: _companyCommercailName,
                      textAlign: TextAlign.right,
                      decoration: InputDecoration(border: InputBorder.none),
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
                  padding: EdgeInsets.symmetric(vertical: 5),
                  child: Container(
                    height: 30,
                    decoration: BoxDecoration(
                        color: Colors.grey[300],
                        border:
                            Border.all(color: Theme.of(context).primaryColor)),
                    child: TextFormField(
                      controller: _email,
                      textAlign: TextAlign.right,
                      decoration: InputDecoration(border: InputBorder.none),
                    ),
                  ),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Text(
                      "نوع المساعده",
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
                      controller: _helpType,
                      textAlign: TextAlign.right,
                      decoration: InputDecoration(border: InputBorder.none),
                    ),
                  ),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Text(
                      'غير ذلك',
                      style: TextStyle(color: Theme.of(context).primaryColor),
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  child: Container(
                    // height: 30,
                    decoration: BoxDecoration(
                        color: Colors.grey[300],
                        border:
                            Border.all(color: Theme.of(context).primaryColor)),
                    child: TextFormField(
                      controller: _other,
                      maxLines: 3,
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
                        pubProv.sendHelp(
                          _companyName.text,
                          _companyCommercailName.text,
                          _email.text,
                          _helpType.text,
                          _other.text,
                          context,
                        );
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
        drawer: CustomDrawer(),
        appBar: AppBar(
          // title: Text(''),
          // leading: IconButton(
          //     icon: Icon(Icons.arrow_back_ios),
          //     onPressed: () {
          //       Navigator.pop(context);
          //     }),
          centerTitle: true,
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.arrow_back_ios),
                onPressed: () {
                  Navigator.pop(context);
                })
            //           IconButton(
            // icon: Icon(Icons.menu),
            // onPressed: () {
            //   _scaffoldKey.currentState.openEndDrawer();
            // })
          ],
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
                      'Help',
                      style: TextStyle(color: Theme.of(context).accentColor),
                    )
                  ],
                ),
                // SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Company Name',
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
                      controller: _companyName,
                      textAlign: TextAlign.left,
                      decoration: InputDecoration(border: InputBorder.none),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Company Commercial Name',
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
                      controller: _companyCommercailName,
                      textAlign: TextAlign.left,
                      decoration: InputDecoration(border: InputBorder.none),
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
                  padding: EdgeInsets.symmetric(vertical: 5),
                  child: Container(
                    height: 30,
                    decoration: BoxDecoration(
                        color: Colors.grey[300],
                        border:
                            Border.all(color: Theme.of(context).primaryColor)),
                    child: TextFormField(
                      controller: _email,
                      textAlign: TextAlign.left,
                      decoration: InputDecoration(border: InputBorder.none),
                    ),
                  ),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Help Type",
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
                      controller: _helpType,
                      textAlign: TextAlign.left,
                      decoration: InputDecoration(border: InputBorder.none),
                    ),
                  ),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Other',
                      style: TextStyle(color: Theme.of(context).primaryColor),
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  child: Container(
                    // height: 30,
                    decoration: BoxDecoration(
                        color: Colors.grey[300],
                        border:
                            Border.all(color: Theme.of(context).primaryColor)),
                    child: TextFormField(
                      controller: _other,
                      maxLines: 3,
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
                        pubProv.sendHelp(
                          _companyName.text,
                          _companyCommercailName.text,
                          _email.text,
                          _helpType.text,
                          _other.text,
                          context,
                        );
                      },
                      child: Text(
                        "Send request",
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
