import 'package:flutter/material.dart';
import 'package:mokafaatmerchants/scr/home/home.dart';
import 'package:mokafaatmerchants/scr/login/login.dart';
import 'package:mokafaatmerchants/scr/qrcode/scan.dart';
import 'package:mokafaatmerchants/scr/sellerscreen/login/seller_signup2.dart';
import 'package:mokafaatmerchants/scr/sellerscreen/login/seller_signup4.dart';
import 'package:mokafaatmerchants/scr/setteing/contactuspage.dart';
import 'package:mokafaatmerchants/scr/setteing/setteing_page.dart';
import 'package:mokafaatmerchants/service/public_provider.dart';
import 'package:provider/provider.dart';

class CustomDrawer extends StatefulWidget {
  @override
  _CustomDrawerState createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  @override
  Widget build(BuildContext context) {
        final pubProv = Provider.of<PublicProvider>(context);
if(pubProv.langValue=='Ar'){
  return Container(
      width: MediaQuery.of(context).size.width * 0.7,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.white),
      child: ListView(
        children: <Widget>[
          SizedBox(height: 45),
          Container(
            width: double.infinity,
            child: Column(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Card(
                    clipBehavior: Clip.antiAlias,
                    child: Image.asset(
                      'assets/mm.png',
                      height: 45,
                    ),
                  ),
                ),
                Text('افضل العروض لتوفير اكبر')
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
            child: GestureDetector(
              onTap: () {
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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text(
                    "الصفحه الرئسيه",
                    textAlign: TextAlign.right,
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                  SizedBox(width: 8),
                  Icon(Icons.home,
                      size: 30, color: Theme.of(context).accentColor),
                ],
              ),
            ),
          ),
          // Padding(
          //   padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
          //   child: GestureDetector(
          //     onTap: () {
          //       Navigator.push(
          //         context,
          //         PageRouteBuilder(
          //           pageBuilder: (c, a1, a2) => SellerOffer(),
          //           transitionsBuilder: (c, anim, a2, child) =>
          //               FadeTransition(opacity: anim, child: child),
          //           transitionDuration: Duration(milliseconds: 300),
          //         ),
          //       );
          //     },
          //     child: Row(
          //       mainAxisAlignment: MainAxisAlignment.end,
          //       children: <Widget>[
          //         Text(
          //           "اضافه عرض",
          //           textAlign: TextAlign.right,
          //           style: TextStyle(
          //               fontWeight: FontWeight.bold, color: Colors.black),
          //         ),
          //         SizedBox(width: 8),
          //         Icon(Icons.add_box,
          //             size: 30, color: Theme.of(context).accentColor),
          //       ],
          //     ),
          //   ),
          // ),
          // Padding(
          //   padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
          //   child: GestureDetector(
          //     onTap: () {
          //       Navigator.push(
          //         context,
          //         PageRouteBuilder(
          //           pageBuilder: (c, a1, a2) => SellerOffer4(),
          //           transitionsBuilder: (c, anim, a2, child) =>
          //               FadeTransition(opacity: anim, child: child),
          //           transitionDuration: Duration(milliseconds: 300),
          //         ),
          //       );
          //     },
          //     child: Row(
          //       mainAxisAlignment: MainAxisAlignment.end,
          //       children: <Widget>[
          //         Text(
          //           "العروض الخاصه",
          //           textAlign: TextAlign.right,
          //           style: TextStyle(
          //               fontWeight: FontWeight.bold, color: Colors.black),
          //         ),
          //         SizedBox(width: 8),
          //         Stack(
          //           overflow: Overflow.visible,
          //           children: <Widget>[
          //             Icon(Icons.ondemand_video,
          //                 size: 30, color: Theme.of(context).accentColor),
          //           ],
          //         ),
          //       ],
          //     ),
          //   ),
          // ),
          // Padding(
          //   padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
          //   child: GestureDetector(
          //     onTap: () {
          //       Navigator.push(
          //         context,
          //         PageRouteBuilder(
          //           pageBuilder: (c, a1, a2) => SellerSignup5(),
          //           transitionsBuilder: (c, anim, a2, child) =>
          //               FadeTransition(opacity: anim, child: child),
          //           transitionDuration: Duration(milliseconds: 300),
          //         ),
          //       );
          //     },
          //     child: Row(
          //       mainAxisAlignment: MainAxisAlignment.end,
          //       children: <Widget>[
          //         Text(
          //           "عقد التاجر",
          //           textAlign: TextAlign.right,
          //           style: TextStyle(
          //               fontWeight: FontWeight.bold, color: Colors.black),
          //         ),
          //         SizedBox(width: 8),
          //         Icon(Icons.mode_edit,
          //             size: 30, color: Theme.of(context).accentColor),
          //       ],
          //     ),
          //   ),
          // ),
    
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (c, a1, a2) => ScanScreen(),
                    transitionsBuilder: (c, anim, a2, child) =>
                        FadeTransition(opacity: anim, child: child),
                    transitionDuration: Duration(milliseconds: 300),
                  ),
                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text(
                    "قاري الباركود",
                    textAlign: TextAlign.right,
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                  SizedBox(width: 8),
                  Icon(Icons.scatter_plot,
                      size: 30, color: Theme.of(context).accentColor),
                ],
              ),
            ),
          ),
          // Padding(
          //   padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
          //   child: GestureDetector(
          //     onTap: () {
          //       Navigator.push(
          //         context,
          //         PageRouteBuilder(
          //           pageBuilder: (c, a1, a2) => SellerOffer3(),
          //           transitionsBuilder: (c, anim, a2, child) =>
          //               FadeTransition(opacity: anim, child: child),
          //           transitionDuration: Duration(milliseconds: 300),
          //         ),
          //       );
          //     },
          //     child: Row(
          //       mainAxisAlignment: MainAxisAlignment.end,
          //       children: <Widget>[
          //         Text(
          //           "استفسار",
          //           textAlign: TextAlign.right,
          //           style: TextStyle(
          //               fontWeight: FontWeight.bold, color: Colors.black),
          //         ),
          //         SizedBox(width: 8),
          //         Icon(Icons.question_answer,
          //             size: 30, color: Theme.of(context).accentColor),
          //       ],
          //     ),
          //   ),
          // ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (c, a1, a2) => ContactusPage(),
                    transitionsBuilder: (c, anim, a2, child) =>
                        FadeTransition(opacity: anim, child: child),
                    transitionDuration: Duration(milliseconds: 300),
                  ),
                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text(
                    "مساعده",
                    textAlign: TextAlign.right,
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                  SizedBox(width: 8),
                  Icon(Icons.help,
                      size: 30, color: Theme.of(context).accentColor),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
            child: GestureDetector(
              onTap: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  // Expanded(
                  //   child: GestureDetector(
                  //     onTap: () {},
                  //     child: Row(
                  //       mainAxisAlignment: MainAxisAlignment.end,
                  //       children: <Widget>[
                  //         Text(
                  //           "مساعده",
                  //           textAlign: TextAlign.right,
                  //           style: TextStyle(
                  //               fontWeight: FontWeight.bold,
                  //               color: Colors.black),
                  //         ),
                  //         SizedBox(width: 8),
                  //         Icon(Icons.help_outline,
                  //             size: 30, color: Colors.black),
                  //       ],
                  //     ),
                  //   ),
                  // ),
                  // SizedBox(width: 8),
                  // Container(
                  //   height: 25,
                  //   width: 2,
                  //   color: Colors.grey,
                  // ),
                  // SizedBox(width: 5),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                                                Navigator.push(context, MaterialPageRoute(builder: (ctx)=>SetteingPage()));

                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Text(
                            "الاعدادات",
                            textAlign: TextAlign.right,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          SizedBox(width: 8),
                          Icon(Icons.settings,
                              size: 30, color: Theme.of(context).accentColor),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (c, a1, a2) => LoginScreen(),
                    transitionsBuilder: (c, anim, a2, child) =>
                        FadeTransition(opacity: anim, child: child),
                    transitionDuration: Duration(milliseconds: 300),
                  ),
                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text(
                    "خروج",
                    textAlign: TextAlign.right,
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                  SizedBox(width: 8),
                  Icon(Icons.exit_to_app,
                      size: 30, color: Theme.of(context).accentColor),
                ],
              ),
            ),
          ),
        ],
      ),
    );
}else{
  return Container(
      width: MediaQuery.of(context).size.width * 0.7,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.white),
      child: ListView(
        children: <Widget>[
          SizedBox(height: 45),
          Container(
            width: double.infinity,
            child: Column(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Card(
                    clipBehavior: Clip.antiAlias,
                    child: Image.asset(
                      'assets/mm.png',
                      height: 45,
                    ),
                  ),
                ),
                Text('Best offer for saving money')
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
            child: GestureDetector(
              onTap: () {
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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Icon(Icons.home,
                      size: 30, color: Theme.of(context).accentColor),
                                        SizedBox(width: 8),

                  Text(
                    "Home",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                  
                ],
              ),
            ),
          ),
          // Padding(
          //   padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
          //   child: GestureDetector(
          //     onTap: () {
          //       Navigator.push(
          //         context,
          //         PageRouteBuilder(
          //           pageBuilder: (c, a1, a2) => SellerOffer(),
          //           transitionsBuilder: (c, anim, a2, child) =>
          //               FadeTransition(opacity: anim, child: child),
          //           transitionDuration: Duration(milliseconds: 300),
          //         ),
          //       );
          //     },
          //     child: Row(
          //       mainAxisAlignment: MainAxisAlignment.end,
          //       children: <Widget>[
          //         Text(
          //           "اضافه عرض",
          //           textAlign: TextAlign.right,
          //           style: TextStyle(
          //               fontWeight: FontWeight.bold, color: Colors.black),
          //         ),
          //         SizedBox(width: 8),
          //         Icon(Icons.add_box,
          //             size: 30, color: Theme.of(context).accentColor),
          //       ],
          //     ),
          //   ),
          // ),
          // Padding(
          //   padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
          //   child: GestureDetector(
          //     onTap: () {
          //       Navigator.push(
          //         context,
          //         PageRouteBuilder(
          //           pageBuilder: (c, a1, a2) => SellerOffer4(),
          //           transitionsBuilder: (c, anim, a2, child) =>
          //               FadeTransition(opacity: anim, child: child),
          //           transitionDuration: Duration(milliseconds: 300),
          //         ),
          //       );
          //     },
          //     child: Row(
          //       mainAxisAlignment: MainAxisAlignment.end,
          //       children: <Widget>[
          //         Text(
          //           "العروض الخاصه",
          //           textAlign: TextAlign.right,
          //           style: TextStyle(
          //               fontWeight: FontWeight.bold, color: Colors.black),
          //         ),
          //         SizedBox(width: 8),
          //         Stack(
          //           overflow: Overflow.visible,
          //           children: <Widget>[
          //             Icon(Icons.ondemand_video,
          //                 size: 30, color: Theme.of(context).accentColor),
          //           ],
          //         ),
          //       ],
          //     ),
          //   ),
          // ),
          // Padding(
          //   padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
          //   child: GestureDetector(
          //     onTap: () {
          //       Navigator.push(
          //         context,
          //         PageRouteBuilder(
          //           pageBuilder: (c, a1, a2) => SellerSignup5(),
          //           transitionsBuilder: (c, anim, a2, child) =>
          //               FadeTransition(opacity: anim, child: child),
          //           transitionDuration: Duration(milliseconds: 300),
          //         ),
          //       );
          //     },
          //     child: Row(
          //       mainAxisAlignment: MainAxisAlignment.start,
          //       children: <Widget>[
          //         Icon(Icons.mode_edit,
          //             size: 30, color: Theme.of(context).accentColor),
          //                               SizedBox(width: 8),

          //         Text(
          //           "Merchant contract",
          //           textAlign: TextAlign.left,
          //           style: TextStyle(
          //               fontWeight: FontWeight.bold, color: Colors.black),
          //         ),
                  
          //       ],
          //     ),
          //   ),
          // ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (c, a1, a2) => SellerSignup2(),
                    transitionsBuilder: (c, anim, a2, child) =>
                        FadeTransition(opacity: anim, child: child),
                    transitionDuration: Duration(milliseconds: 300),
                  ),
                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Icon(Icons.group,
                      size: 30, color: Theme.of(context).accentColor),
                                        SizedBox(width: 8),

                  Text(
                    "Join as merchant",
                    textAlign: TextAlign.right,
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                  
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (c, a1, a2) => ScanScreen(),
                    transitionsBuilder: (c, anim, a2, child) =>
                        FadeTransition(opacity: anim, child: child),
                    transitionDuration: Duration(milliseconds: 300),
                  ),
                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Icon(Icons.scatter_plot,
                      size: 30, color: Theme.of(context).accentColor),
                                  SizedBox(width: 8),

                  Text(
                    "Barcode",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                  
                ],
              ),
            ),
          ),
          // Padding(
          //   padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
          //   child: GestureDetector(
          //     onTap: () {
          //       Navigator.push(
          //         context,
          //         PageRouteBuilder(
          //           pageBuilder: (c, a1, a2) => SellerOffer3(),
          //           transitionsBuilder: (c, anim, a2, child) =>
          //               FadeTransition(opacity: anim, child: child),
          //           transitionDuration: Duration(milliseconds: 300),
          //         ),
          //       );
          //     },
          //     child: Row(
          //       mainAxisAlignment: MainAxisAlignment.end,
          //       children: <Widget>[
          //         Text(
          //           "استفسار",
          //           textAlign: TextAlign.right,
          //           style: TextStyle(
          //               fontWeight: FontWeight.bold, color: Colors.black),
          //         ),
          //         SizedBox(width: 8),
          //         Icon(Icons.question_answer,
          //             size: 30, color: Theme.of(context).accentColor),
          //       ],
          //     ),
          //   ),
          // ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (c, a1, a2) => ContactusPage(),
                    transitionsBuilder: (c, anim, a2, child) =>
                        FadeTransition(opacity: anim, child: child),
                    transitionDuration: Duration(milliseconds: 300),
                  ),
                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Icon(Icons.help,
                      size: 30, color: Theme.of(context).accentColor),
                                    SizedBox(width: 8),

                  Text(
                    "Help",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                 
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
            child: GestureDetector(
              onTap: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  // Expanded(
                  //   child: GestureDetector(
                  //     onTap: () {},
                  //     child: Row(
                  //       mainAxisAlignment: MainAxisAlignment.end,
                  //       children: <Widget>[
                  //         Text(
                  //           "مساعده",
                  //           textAlign: TextAlign.right,
                  //           style: TextStyle(
                  //               fontWeight: FontWeight.bold,
                  //               color: Colors.black),
                  //         ),
                  //         SizedBox(width: 8),
                  //         Icon(Icons.help_outline,
                  //             size: 30, color: Colors.black),
                  //       ],
                  //     ),
                  //   ),
                  // ),
                  // SizedBox(width: 8),
                  // Container(
                  //   height: 25,
                  //   width: 2,
                  //   color: Colors.grey,
                  // ),
                  // SizedBox(width: 5),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (ctx)=>SetteingPage()));
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                  
                          Icon(Icons.settings,
                              size: 30, color: Theme.of(context).accentColor),
                                                                SizedBox(width: 8),

                                      Text(
                            "Settings",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (c, a1, a2) => LoginScreen(),
                    transitionsBuilder: (c, anim, a2, child) =>
                        FadeTransition(opacity: anim, child: child),
                    transitionDuration: Duration(milliseconds: 300),
                  ),
                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
              
                  Icon(Icons.exit_to_app,
                      size: 30, color: Theme.of(context).accentColor),
                                           SizedBox(width: 8),

                          Text(
                    "Exit",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
}
  
  }
}
