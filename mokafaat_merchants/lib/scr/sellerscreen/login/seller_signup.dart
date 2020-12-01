import 'package:flutter/material.dart';

class SellerSignup extends StatefulWidget {
  @override
  SellerSignupState createState() => SellerSignupState();
}

class SellerSignupState extends State<SellerSignup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      resizeToAvoidBottomInset: false,
      body: ListView(
        // mainAxisAlignment: MainAxisAlignment.end,
        shrinkWrap: true,

        padding: EdgeInsets.zero,
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.45,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/splash.png'))),
              ),
              Positioned(
                  top: 30,
                  child: IconButton(
                      icon: Icon(
                        Icons.arrow_back,
                        size: 30,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        // Navigator.pop(context);
                      })),
              Positioned(
                  bottom: 60,
                  left: 50,
                  right: 50,
                  child: Text(
                    "اهلا بكم في مكافات التاجر",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.orange,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ))
            ],
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              children: <Widget>[
                Container(
                  child: TextField(
                    textAlign: TextAlign.right,
                    autofocus: false,
                    decoration: InputDecoration(
                        suffixIcon: Icon(Icons.email),
                        hintText: 'اسم المستخدم'),
                  ),
                ),
                SizedBox(height: 5),
                Container(
                  child: TextField(
                    textAlign: TextAlign.right,
                    autofocus: false,
                    decoration: InputDecoration(
                        suffixIcon: Icon(Icons.lock), hintText: 'كلمه المرور'),
                  ),
                ),
                SizedBox(height: 15),
                Container(
                  height: 45,
                  width: MediaQuery.of(context).size.width,
                  child: FlatButton(
                      color: Colors.orange[700],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8))),
                      onPressed: () {
                        Navigator.pushNamed(context, '/selleroffer4');
                      },
                      child: Text(
                        "تسجيل الدخول",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w800),
                      )),
                ),
                SizedBox(height: 20),
                Container(
                  height: 45,
                  width: MediaQuery.of(context).size.width,
                  child: FlatButton(
                      color: Colors.blue[700],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8))),
                      onPressed: () {
                                                Navigator.pushNamed(context, '/sellersignup3');

                      },
                      child: Text(
                        "حفظ",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w800),
                      )),
                ),
                SizedBox(height: 20),
                Container(
                  height: 45,
                  width: MediaQuery.of(context).size.width,
                  child: FlatButton(
                      color: Colors.blue[700],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8))),
                      onPressed: () {
                                                                        Navigator.pushNamed(context, '/sellersignup2');

                      },
                      child: Text(
                        "الانضمام الينا كتاجر",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w800),
                      )),
                ),
              ],
            ),
          ),
          SizedBox(height: 200),
        ],
      ),
    );
  }
}
