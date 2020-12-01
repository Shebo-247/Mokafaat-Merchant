import 'dart:async';
import 'dart:io' show Platform;

import 'package:barcode_scan/barcode_scan.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mokafaatmerchants/scr/home/home.dart';
import 'package:mokafaatmerchants/scr/widgets/coustome_drawer.dart';
import 'package:mokafaatmerchants/service/public_provider.dart';
import 'package:provider/provider.dart';

class ScanScreen extends StatefulWidget {
  @override
  ScanScreenState createState() => ScanScreenState();
}

class ScanScreenState extends State<ScanScreen> {
  ScanResult scanResult;

  final _flashOnController = TextEditingController(text: "Flash on");
  final _flashOffController = TextEditingController(text: "Flash off");
  final _cancelController = TextEditingController(text: "Cancel");

  var _aspectTolerance = 0.00;
  var _numberOfCameras = 0;
  var _selectedCamera = -1;
  var _useAutoFocus = true;
  var _autoEnableFlash = false;

  static final _possibleFormats = BarcodeFormat.values.toList()
    ..removeWhere((e) => e == BarcodeFormat.unknown);

  List<BarcodeFormat> selectedFormats = [..._possibleFormats];

  @override
  // ignore: type_annotate_public_apis
  initState() {
    super.initState();

    Future.delayed(Duration.zero, () async {
      _numberOfCameras = await BarcodeScanner.numberOfCameras;
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    final pubProv = Provider.of<PublicProvider>(context);
    if (pubProv.langValue == 'Ar') {
      var contentList = <Widget>[
        if (scanResult == null)
          Card(
            child: Column(
              children: <Widget>[
                ListTile(
                  title: Text("الكود"),
                  subtitle: Text("اضغط لاسكان المنتج"),
                ),
              ],
            ),
          ),
        if (scanResult != null)
          Card(
            child: Column(
              children: <Widget>[
                ListTile(
                  title: Text("الكود"),
                  subtitle: Text(scanResult.rawContent ?? ""),
                ),
              ],
            ),
          ),
      ];

      return Scaffold(
        appBar: AppBar(
          title: Text('الباركود'),
          actions: <Widget>[],
        ),
        endDrawer: CustomDrawer(),
        body: Column(
          children: <Widget>[
            RaisedButton.icon(
              icon: Icon(Icons.camera),
              label: Text("مسح الكود"),
              onPressed: scan,
            ),
            ListView(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              children: contentList,
            ),
            RaisedButton(
              onPressed: () {
                pubProv.activateOfferByBarcode(context, scanResult.rawContent ?? "");
           
              },
              child: Text(" اضغط لتفعيل القسيمه "),
            )
          ],
        ),
      );
    } else {
      var contentList = <Widget>[
        if (scanResult == null)
          Card(
            child: Column(
              children: <Widget>[
                ListTile(
                  title: Text("Result"),
                  subtitle: Text("Press for scanning"),
                ),
              ],
            ),
          ),
        if (scanResult != null)
          Card(
            child: Column(
              children: <Widget>[
                ListTile(
                  title: Text("Result"),
                  subtitle: Text(scanResult.rawContent ?? ""),
                ),
              ],
            ),
          ),
      ];

      return Scaffold(
        appBar: AppBar(
          title: Text('Barcode Scanner'),
          actions: <Widget>[],
        ),
        drawer: CustomDrawer(),
        body: Column(
          children: <Widget>[
            RaisedButton.icon(
              icon: Icon(Icons.camera),
              label: Text("Scan "),
              onPressed: scan,
            ),
            ListView(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              children: contentList,
            ),
            RaisedButton(
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
              child: Text("Press for activation"),
            )
          ],
        ),
      );
    }
  }

  Future scan() async {
    try {
      var options = ScanOptions(
        strings: {
          "cancel": _cancelController.text,
          "flash_on": _flashOnController.text,
          "flash_off": _flashOffController.text,
        },
        restrictFormat: selectedFormats,
        useCamera: _selectedCamera,
        autoEnableFlash: _autoEnableFlash,
        android: AndroidOptions(
          aspectTolerance: _aspectTolerance,
          useAutoFocus: _useAutoFocus,
        ),
      );

      var result = await BarcodeScanner.scan(options: options);

      setState(() => scanResult = result);
    } on PlatformException catch (e) {
      var result = ScanResult(
        type: ResultType.Error,
        format: BarcodeFormat.unknown,
      );

      if (e.code == BarcodeScanner.cameraAccessDenied) {
        setState(() {
          result.rawContent = 'The user did not grant the camera permission!';
        });
      } else {
        result.rawContent = 'Unknown error: $e';
      }
      setState(() {
        scanResult = result;
      });
    }
  }
}
