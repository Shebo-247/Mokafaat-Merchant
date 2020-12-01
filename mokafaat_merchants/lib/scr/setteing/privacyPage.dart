import 'package:flutter/material.dart';
import 'package:mokafaatmerchants/service/public_provider.dart';
import 'package:provider/provider.dart';

class PrivacyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final homeProvidder = Provider.of<PublicProvider>(context);

    return Scaffold(
      appBar: AppBar(),
      body: FutureBuilder(
          future: homeProvidder.privacyApi(),
          builder: (context, AsyncSnapshot snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(child: CircularProgressIndicator());
            } else {
              if (snapshot.error != null) {
                return Center(child: Text(''));
              } else {
                return Consumer<PublicProvider>(
                    builder: (ctx, homeProvider, child) {
                  return Padding(
                    padding: EdgeInsets.all(10),
                    child: SingleChildScrollView(
                      child: homeProvidder.langValue == 'Ar'
                          ? Text(
                              homeProvidder.privacyResult['Details'],
                              textAlign: TextAlign.right,
                            )
                          : Text(
                              homeProvidder.privacyResult['EnDetails'],
                              textAlign: TextAlign.left,
                            ),
                    ),
                  );
                });
              }
            }
          }),
    );
  }
}
