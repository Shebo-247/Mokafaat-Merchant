import 'package:flutter/material.dart';
import 'package:mokafaatmerchants/scr/qrcode/scan.dart';
import 'package:mokafaatmerchants/scr/widgets/coustome_drawer.dart';
import 'package:mokafaatmerchants/service/public_provider.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _sckaffoldKey = GlobalKey<ScaffoldState>();
  TextEditingController _voucherCodeController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final pubProv = Provider.of<PublicProvider>(context);
    if (pubProv.langValue == 'Ar') {
      return WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
            key: _sckaffoldKey,
            appBar: AppBar(
              title: Text("عرض القسائم"),
              automaticallyImplyLeading: false,
            ),
            endDrawer: CustomDrawer(),
            body: FutureBuilder(
                future: pubProv.homeApi(context),
                builder: (ctx, snapshot) {
                  if (snapshot.data != null) {
                    return ListView.builder(
                      itemCount: pubProv.homeResult.length,
                      itemBuilder: (ctx, int i) {
                        final item = pubProv.homeResult[i];
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            child: Card(
                              elevation: 10,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.all(0.0),
                                      child: Container(
                                        // height: 150,
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: FadeInImage.assetNetwork(
                                            fit: BoxFit.cover,
                                            placeholder: 'assets/itm.png',
                                            imageErrorBuilder:
                                                (context, url, error) =>
                                                    new Icon(Icons.error),
                                            image: item['image']),
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Flexible(
                                          child: Text(
                                            "SAR ${item['PriceAfterDiscount']}",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        Flexible(
                                          child: Text(
                                            item['Title'],
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      item['Intro'],
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.stretch,
                                        children: <Widget>[
                                          Container(
                                            child: RaisedButton(
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(5)),
                                              color:
                                                  Theme.of(context).accentColor,
                                              onPressed: () {
                                                Navigator.push(
                                                  context,
                                                  PageRouteBuilder(
                                                    pageBuilder: (c, a1, a2) =>
                                                        ScanScreen(),
                                                    transitionsBuilder:
                                                        (c, anim, a2, child) =>
                                                            FadeTransition(
                                                                opacity: anim,
                                                                child: child),
                                                    transitionDuration:
                                                        Duration(
                                                            milliseconds: 300),
                                                  ),
                                                );
                                              },
                                              child: Text(
                                                " الباركود",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 15,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            child: RaisedButton(
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(5)),
                                              color:
                                                  Theme.of(context).accentColor,
                                              onPressed: () {
                                                showDialog(
                                                  context: context,
                                                  builder:
                                                      (BuildContext context) {
                                                    return Container(
                                                      // height: 50,
                                                      child: AlertDialog(
                                                        shape: RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius.all(
                                                                    Radius.circular(
                                                                        10.0))),
                                                        title: Container(
                                                          child: Column(
                                                            children: <Widget>[
                                                              Text(
                                                                  "تحقق من القسيمة"),
                                                              Text(
                                                                "الرجاء إدخال رمز القسيمة",
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        12),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        content: Container(
                                                          height: 100,
                                                          child: Column(
                                                            children: <Widget>[
                                                              TextField(
                                                                // enabled: false,
                                                                controller:
                                                                    _voucherCodeController,
                                                                decoration:
                                                                    InputDecoration(
                                                                        hintText:
                                                                            "#48299292"),
                                                              ),
                                                              Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceAround,
                                                                children: <
                                                                    Widget>[
                                                                  RaisedButton(
                                                                      color: Colors
                                                                              .orange[
                                                                          200],
                                                                      onPressed:
                                                                          () {
                                                                        Navigator.pop(
                                                                            context);
                                                                      },
                                                                      child: Text(
                                                                          "الغاء")),
                                                                  RaisedButton(
                                                                      color: Colors
                                                                              .orange[
                                                                          300],
                                                                      onPressed:
                                                                          () {
                                                                        pubProv.activateOffer(
                                                                            _sckaffoldKey.currentContext,
                                                                            _voucherCodeController.text);
                                                                      },
                                                                      child: Text(
                                                                          "تاكيد"))
                                                                ],
                                                              )
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    );
                                                  },
                                                );
                                              },
                                              child: Text(
                                                "تفعيل يدويا",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 15,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            child: RaisedButton(
                                              elevation: 0,
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(5)),
                                              color: Colors.orange[300],
                                              onPressed: () {},
                                              child: Text(
                                                " عدد القسائم المباعة " +
                                                    " ${item['GetActivatedCount']}",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 15,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    );
                  } else {
                    return Center(
                      child: Container(child: CircularProgressIndicator()),
                    );
                  }
                })),
      );
    } else {
      return WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
            appBar: AppBar(
              title: Text("Redeem Vouchers"),
              // automaticallyImplyLeading: false
            ),
            drawer: CustomDrawer(),
            body: FutureBuilder(
                future: pubProv.homeApi(context),
                builder: (ctx, snapshot) {
                  if (snapshot.data != null) {
                    return ListView.builder(
                      itemCount: pubProv.homeResult.length,
                      itemBuilder: (ctx, int i) {
                        final item = pubProv.homeResult[i];
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            child: Card(
                              elevation: 10,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.all(0.0),
                                      child: Container(
                                        // height: 150,
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: FadeInImage.assetNetwork(
                                            fit: BoxFit.cover,
                                            placeholder: 'assets/itm.png',
                                            imageErrorBuilder:
                                                (context, url, error) =>
                                                    new Icon(Icons.error),
                                            image: item['image']),
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Flexible(
                                          child: Text(
                                            item['EnTitle'],
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        Flexible(
                                          child: Text(
                                            "SAR ${item['PriceAfterDiscount']}",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                        )
                                      ],
                                    ),
                                    Text(
                                      item['EnIntro'],
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.stretch,
                                        children: <Widget>[
                                          Container(
                                            child: RaisedButton(
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(5)),
                                              color:
                                                  Theme.of(context).accentColor,
                                              onPressed: () {
                                                Navigator.push(
                                                  context,
                                                  PageRouteBuilder(
                                                    pageBuilder: (c, a1, a2) =>
                                                        ScanScreen(),
                                                    transitionsBuilder:
                                                        (c, anim, a2, child) =>
                                                            FadeTransition(
                                                                opacity: anim,
                                                                child: child),
                                                    transitionDuration:
                                                        Duration(
                                                            milliseconds: 300),
                                                  ),
                                                );
                                              },
                                              child: Text(
                                                "Barcode Redemption",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 15,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            child: RaisedButton(
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(5)),
                                              color:
                                                  Theme.of(context).accentColor,
                                              onPressed: () {
                                                showDialog(
                                                  context: context,
                                                  builder:
                                                      (BuildContext context) {
                                                    return Container(
                                                      // height: 50,
                                                      child: AlertDialog(
                                                        shape: RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius.all(
                                                                    Radius.circular(
                                                                        10.0))),
                                                        title: Container(
                                                          child: Column(
                                                            children: <Widget>[
                                                              Text(
                                                                  "Verify Voucher"),
                                                              Text(
                                                                "Please enter the voucher code",
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        12),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        content: Container(
                                                          height: 100,
                                                          child: Column(
                                                            children: <Widget>[
                                                              TextField(
                                                                // enabled: false,
                                                                controller:
                                                                    _voucherCodeController,
                                                                decoration:
                                                                    InputDecoration(
                                                                        hintText:
                                                                            "#48299292"),
                                                              ),
                                                              Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceAround,
                                                                children: <
                                                                    Widget>[
                                                                  RaisedButton(
                                                                      color: Colors
                                                                              .orange[
                                                                          200],
                                                                      onPressed:
                                                                          () {
                                                                        Navigator.pop(
                                                                            context);
                                                                      },
                                                                      child: Text(
                                                                          "Cancel")),
                                                                  RaisedButton(
                                                                      color: Colors
                                                                              .orange[
                                                                          300],
                                                                        onPressed:
                                                                          () {
                                                                        pubProv.activateOffer(
                                                                            _sckaffoldKey.currentContext,
                                                                            _voucherCodeController.text);
                                                                      },
                                                                      child: Text(
                                                                          "Verify"))
                                                                ],
                                                              )
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    );
                                                  },
                                                );
                                              },
                                              child: Text(
                                                "Manual Redemption",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 15,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            child: RaisedButton(
                                              elevation: 0,
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(5)),
                                              color: Colors.orange[300],
                                              onPressed: () {},
                                              child: Text(
                                                " The number of sold coupons " +
                                                    " ${item['GetActivatedCount']}",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 15,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    );
                  } else {
                    return Center(
                      child: Container(child: CircularProgressIndicator()),
                    );
                  }
                })),
      );
    }
  }
}
