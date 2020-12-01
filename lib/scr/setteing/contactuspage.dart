import 'package:flutter/material.dart';
import 'package:mokafaatmerchants/service/public_provider.dart';
import 'package:provider/provider.dart';

class ContactusPage extends StatefulWidget {
  @override
  _ContactusPageState createState() => _ContactusPageState();
}

class _ContactusPageState extends State<ContactusPage> {
  final _formKey = GlobalKey<FormState>();
  String subject;

  String reason;
  String name;
  String email;
  String phone;
  String message;

  @override
  Widget build(BuildContext context) {
    final homeProvider = Provider.of<PublicProvider>(context);
    if (homeProvider.langValue == 'Ar') {
      return Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding: EdgeInsets.all(5),
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                shadowColor: Colors.blue[200],
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: <Widget>[
                      TextFormField(
                        textAlign: TextAlign.right,
                        decoration: InputDecoration(hintText: "الموضوع"),
                        onSaved: (String val) {
                          subject = val;
                        },
                      ),
                      TextFormField(
                        textAlign: TextAlign.right,
                        decoration: InputDecoration(hintText: "السبب"),
                        onSaved: (String val) {
                          reason = val;
                        },
                      ),
                      TextFormField(
                        textAlign: TextAlign.right,
                        decoration: InputDecoration(hintText: "الاسم"),
                        onSaved: (String val) {
                          name = val;
                        },
                      ),
                      TextFormField(
                        textAlign: TextAlign.right,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(hintText: "الايميل"),
                        onSaved: (String val) {
                          email = val;
                        },
                      ),
                      TextFormField(
                        textAlign: TextAlign.right,
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(hintText: "رقم الهاتف"),
                        onSaved: (String val) {
                          phone = val;
                        },
                      ),
                      TextFormField(
                        textAlign: TextAlign.right,
                        maxLines: 4,
                        decoration: InputDecoration(hintText: "الرساله"),
                        onSaved: (String val) {
                          message = val;
                        },
                      ),
                      SizedBox(height: 15),
                      RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                          color: Theme.of(context).primaryColor,
                          onPressed: () {
                            if (_formKey.currentState.validate()) {
                              _formKey.currentState.save();
                         homeProvider.contactusApi(context,subject, reason, name, email, phone, message);
                            }
                          },
                          child: Text(
                            "ارسال",
                            style: TextStyle(color: Colors.white),
                          ))
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      );
    } else {
      return Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding: EdgeInsets.all(5),
          child: SingleChildScrollView(
            child: Form(
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                shadowColor: Colors.blue[200],
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: <Widget>[
                      TextFormField(
                        // textAlign: TextAlign.right,
                        decoration: InputDecoration(hintText: "Subject"),
                      ),
                      TextFormField(
                        // textAlign: TextAlign.right,
                        decoration: InputDecoration(hintText: "Reason"),
                      ),
                      TextFormField(
                        // textAlign: TextAlign.right,
                        decoration: InputDecoration(hintText: "Name"),
                      ),
                      TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(hintText: "Email"),
                      ),
                      TextFormField(
                        // textAlign: TextAlign.right,
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(hintText: "Phone"),
                      ),
                      TextFormField(
                        // textAlign: TextAlign.right,
                        maxLines: 4,
                        decoration: InputDecoration(hintText: "Message"),
                      ),
                      SizedBox(height: 15),
                      RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                          color: Theme.of(context).primaryColor,
                          onPressed: () {},
                          child: Text(
                            "Send",
                            style: TextStyle(color: Colors.white),
                          ))
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      );
    }
  }
}
