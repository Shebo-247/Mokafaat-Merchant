import 'package:flutter/material.dart';
import 'package:mokafaatmerchants/service/public_provider.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

class HowitWorksPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final homeProvidder = Provider.of<PublicProvider>(context);

    return Scaffold(
      appBar: AppBar(),
      body: FutureBuilder(
          future: homeProvidder.howItWorksApi(),
          builder: (context, AsyncSnapshot snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(child: CircularProgressIndicator());
            } else {
              if (snapshot.error != null) {
                return Center(child: Text(' '));
              } else {
                return Consumer<PublicProvider>(
                    builder: (ctx, homeProvider, child) {
                  return SingleChildScrollView(
                    child: Column(children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                          // height: 350,
                          width: MediaQuery.of(context).size.width -15,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5)),
                          child: FadeInImage.assetNetwork(
                              fit: BoxFit.fill,
                              placeholder: 'assets/lodaing3.gif',
                              imageErrorBuilder: (context, url, error) =>
                                  new Icon(Icons.error),
                              image: homeProvidder.langValue == 'Ar'
                                  ? homeProvidder.howItworks['ArabicImage']
                                  : homeProvidder.howItworks['EnglishImage']),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: FlatButton(
                          shape: RoundedRectangleBorder(
                              side: BorderSide(
                                  color: Theme.of(context).primaryColor),
                              borderRadius: BorderRadius.circular(10)),
                          onPressed: () {
                            _launchURL(
                                homeProvidder.howItworks['YuotubeVideo']);
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              homeProvidder.langValue == 'Ar'
                                  ? Text("فيديو توضيحي")
                                  : Text(' Video '),
                              IconButton(
                                icon: Icon(Icons.videocam),
                                onPressed: () {
                                  _launchURL(
                                      homeProvidder.howItworks['YuotubeVideo']);
                                },
                              ),
                            ],
                          ),
                        ),
                      )
                    ]),
                  );
                });
              }
            }
          }),
    );
  }
}

_launchURL(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
