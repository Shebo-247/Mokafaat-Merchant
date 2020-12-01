import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:mokafaatmerchants/scr/home/home.dart';
import 'package:mokafaatmerchants/scr/login/login.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class PublicProvider extends ChangeNotifier {
  final String basURL = 'http://mukafaat.co/ServicesApis/RestFul/Merchants/';

  String langValue = 'Ar';
  update() {
    notifyListeners();
  }

// http://mukafaat.co/ServicesApis/RestFul/Merchants/MerchantLogin.php?email=mukafaatco@gmail.com&password=123456"
  var loginResult;
  Future<void> loginApi(
      BuildContext context, String email, String password) async {
    final response = await http
        .get(basURL + "MerchantLogin.php?email=$email&password=$password");
    final extractedData = json.decode(response.body);
    if (email.isEmpty || password.isEmpty) {
      Alert(
        context: context,
        type: AlertType.error,
        title: "Mokafaat",
        desc: "Enter your email and password",
        buttons: [
          DialogButton(
            child: Text(
              "Ok",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            onPressed: () => Navigator.pop(context),
            width: 120,
          )
        ],
      ).show();
    } else {
      if (extractedData['success'] == 1 &&
          extractedData['MerchantID'] != null) {
        loginResult = extractedData;
        merchantID = extractedData['MerchantID'].toString();
        print(loginResult.toString());
        Navigator.push(
          context,
          PageRouteBuilder(
            pageBuilder: (c, a1, a2) => HomeScreen(),
            transitionsBuilder: (c, anim, a2, child) =>
                FadeTransition(opacity: anim, child: child),
            transitionDuration: Duration(milliseconds: 300),
          ),
        );
      } else {
        Alert(
          context: context,
          type: AlertType.error,
          title: "Mokafaat",
          desc: extractedData['message'].toString(),
          buttons: [
            DialogButton(
              child: Text(
                "Ok",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              onPressed: () => Navigator.pop(context),
              width: 120,
            )
          ],
        ).show();
      }
    }

    return 'Success!';
  }

  String merchantID;

// http://mukafaat.co/ServicesApis/RestFul/Merchants/MerchantOffers.php?MerchantID=1
  var homeResult;
  Future<void> homeApi(BuildContext context) async {
    final response =
        await http.get(basURL + "MerchantOffers.php?MerchantID=$merchantID");
    final extractedData = json.decode(response.body);
    print(basURL + "MerchantOffers.php?MerchantID=$merchantID");
    if (extractedData['success'] == 1) {
      homeResult = extractedData['AllProducts'];
    } else {
      Alert(
        context: context,
        type: AlertType.error,
        title: "Mokafaat",
        desc: extractedData['message'].toString(),
        buttons: [
          DialogButton(
            child: Text(
              "Ok",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            onPressed: () => Navigator.pop(context),
            width: 120,
          )
        ],
      ).show();
    }
    return 'Success!';
  }

  var activatBarcodeResult;
  Future<void> activateOfferByBarcode(
      BuildContext context, String voucherCode) async {
    final response = await http.get(basURL +
        "ActivateVoucher.php?VoucherCode=$voucherCode&VoucherID=$merchantID");
    print(basURL +
        "ActivateVoucher.php?VoucherCode=$voucherCode&VoucherID=$merchantID");
    final extractedData = json.decode(response.body);

    if (extractedData['status'] == 1) {
      Navigator.push(
        context,
        PageRouteBuilder(
          pageBuilder: (c, a1, a2) => HomeScreen(),
          transitionsBuilder: (c, anim, a2, child) =>
              FadeTransition(opacity: anim, child: child),
          transitionDuration: Duration(milliseconds: 300),
        ),
      );
    } else {
      // Navigator.pop(context);
      Alert(
        context: context,
        type: AlertType.error,
        title: "Mokafaat",
        desc: extractedData['message'].toString(),
        buttons: [
          DialogButton(
            child: Text(
              "Ok",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            onPressed: () => Navigator.pop(context),
            width: 120,
          )
        ],
      ).show();
    }
    return 'Success!';
  }

  // http://mukafaat.co/ServicesApis/RestFul/Merchants/ActivateVoucher.php?VoucherCode=&VoucherID=
  var activatResult;
  Future<void> activateOffer(BuildContext context, String voucherCode) async {
    final response = await http.get(basURL +
        "ActivateVoucher.php?VoucherCode=$voucherCode&VoucherID=$merchantID");
    final extractedData = json.decode(response.body);
    print(basURL +
        "ActivateVoucher.php?VoucherCode=$voucherCode&VoucherID=$merchantID");
    print(extractedData.toString());
    if(extractedData['status'] == -2){
           Navigator.pop(context);
      Alert(
        context: context,
        type: AlertType.error,
        title: "Mokafaat",
        desc: extractedData['message'].toString(),
        buttons: [
          DialogButton(
            child: Text(
              "Ok",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            onPressed: () => Navigator.pop(context),
            width: 120,
          )
        ],
      ).show();
    }
    if (extractedData['status'] == 1) {
            Navigator.pop(context);

    } else {
      Navigator.pop(context);
      Alert(
        context: context,
        type: AlertType.error,
        title: "Mokafaat",
        desc: extractedData['message'].toString(),
        buttons: [
          DialogButton(
            child: Text(
              "Ok",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            onPressed: () => Navigator.pop(context),
            width: 120,
          )
        ],
      ).show();
    }
    return 'Success!';
  }

  List allCitiesEN = [
    {'EnName': "Riyadh", "CityID": '1'},
    {'EnName': "Dubai", "CityID": '2'},
    {'EnName': "Dammam", "CityID": '3'},
    {'EnName': "Jeddah", "CityID": '4'},
    {'EnName': "Qassim", "CityID": '5'},
    {'EnName': "Bahrain", "CityID": '6'},
  ];

  List allCitiesAR = [
    {'EnName': "الرياض", "CityID": '1'},
    {'EnName': "دبى", "CityID": '2'},
    {'EnName': "الدمام", "CityID": '3'},
    {'EnName': "جدة", "CityID": '4'},
    {'EnName': "القصيم", "CityID": '5'},
    {'EnName': "البحرين", "CityID": '6'},
  ];

  String cityName = '';
  String cityID;
// http://mukafaat.co/ServicesApis/RestFul/Merchants/JoinUsAsMerchant.php
  Future<dynamic> joinAsMerchant(
    String name,
    String email,
    String phone,
    BuildContext context,
  ) async {
    if (name.trim() != '') {
      var postingBody = 'CityID=' +
          cityID +
          '&Name=' +
          name +
          '&Email=' +
          email +
          '&Phone=' +
          phone;
      String url = Uri.encodeFull(basURL + 'JoinUsAsMerchant.php?');
      Map<String, String> headers = {
        'Content-Type': 'application/x-www-form-urlencoded'
      };
      try {
        final response =
            await http.post(url, body: postingBody, headers: headers);
        final responseData = jsonDecode(response.body);
        print(responseData.toString());
        if (responseData['success'] == 1) {
          AwesomeDialog(
              context: context,
              dialogType: DialogType.SUCCES,
              animType: AnimType.BOTTOMSLIDE,
              tittle: langValue == 'Ar' ? 'مكافات' : "Mokafaat",
              desc: langValue == 'Ar'
                  ? responseData['message'].toString()
                  : "Successfuly sent",
              btnOkOnPress: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (ctx) => LoginScreen()));
              }).show();
        } else {}
        return 'success';
      } catch (error) {
        print(error);
        // throw error;
      }
    } else {}
  }

//   http://mukafaat.co/ServicesApis/RestFul/Merchants/MerchantsEnquiries.php

// Parameters :
// - MerchantID
// - Name
// - CommercialName
// - Email
// - HelpType
// - Other

  Future<dynamic> sendHelp(
    String comapnyName,
    String comapnyCommercialName,
    String email,
    String helpType,
    String other,
    BuildContext context,
  ) async {
    if (comapnyName.trim() != '') {
      var postingBody = 'MerchantID=' +
          merchantID +
          '&Name=' +
          comapnyName +
          '&CommercialName=' +
          comapnyCommercialName +
          '&Email=' +
          email +
          '&HelpType=' +
          helpType +
          '&Other=' +
          other +
          "&FromWho" +
          "1";
      String url = Uri.encodeFull(basURL + 'MerchantsEnquiries.php?');
      Map<String, String> headers = {
        'Content-Type': 'application/x-www-form-urlencoded'
      };
      try {
        final response =
            await http.post(url, body: postingBody, headers: headers);
        final responseData = jsonDecode(response.body);
        print(responseData.toString());
        if (responseData['success'] != 0) {}
        if (responseData['success'] == 0) {}
        return 'success';
      } catch (error) {
        print(error);
        // throw error;
      }
    } else {}
  }

  // SETTINGS PAGE
  var howItworks;
  Future<void> howItWorksApi() async {
    final response = await http.get("http://mukafaat.co/ServicesApis/RestFul/" + "General/HowItWorks.php");
    final extractedData = json.decode(response.body);
    howItworks = extractedData;
    return 'Success!';
  }

  var privacyResult;
  Future<void> privacyApi() async {
    final response = await http.get("http://mukafaat.co/ServicesApis/RestFul/" + "General/Privacy&Policy.php");
    final extractedData = json.decode(response.body);
    privacyResult = extractedData;
    return 'Success!';
  }

  var conditionResult;
  Future<void> conditionsAPi() async {
    final response = await http.get("http://mukafaat.co/ServicesApis/RestFul/" + "General/Terms.php");
    final extractedData = json.decode(response.body);
    conditionResult = extractedData;
    return 'Success!';
  }

  var paymentWays;
  Future<void> paymentWaysAPi() async {
    final response = await http.get("http://mukafaat.co/ServicesApis/RestFul/" + "General/PaymentIcons.php");
    final extractedData = json.decode(response.body);
    paymentWays = extractedData;
    return 'Success!';
  }

  var contactusResult;
  Future<void> contactusApi(
    BuildContext context,
    String subject,
    String reason,
    String name,
    String email,
    String phone,
    String message,
  ) async {
    final response = await http.get("http://mukafaat.co/ServicesApis/RestFul/" +
        "General/SendEmail.php?ReasonID=$reason&Name=$name&Email=$email&Phone=$phone&Subject=$subject&Message=$message&FromWho=1");
    final extractedData = json.decode(response.body);
    print("http://mukafaat.co/ServicesApis/RestFul/General/SendEmail.php?ReasonID=$reason&Name=$name&Email=$email&Phone=$phone&Subject=$subject&Message=$message&FromWho=1");
    contactusResult = extractedData;

    AwesomeDialog(
        context: context,
        dialogType: DialogType.SUCCES,
        animType: AnimType.BOTTOMSLIDE,
        tittle: langValue == 'Ar' ? 'مكافات' : "Mokafaat",
        desc: langValue == 'Ar'
            ? contactusResult['success'].toString()
            : "Successfuly sent",
        btnOkOnPress: () {
          Navigator.pop(context);
        }).show();
    return 'Success!';
  }
}
