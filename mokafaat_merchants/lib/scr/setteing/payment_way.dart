import 'package:flutter/material.dart';
import 'package:mokafaatmerchants/service/public_provider.dart';
import 'package:provider/provider.dart';

class PaymentWaysPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final homeProvidder = Provider.of<PublicProvider>(context);

    return Scaffold(
      appBar: AppBar(),
      body: FutureBuilder(
          future: homeProvidder.paymentWaysAPi(),
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
                    child: ListView.builder(
                        shrinkWrap: true,
                        itemCount:
                            homeProvider.paymentWays['AllPaymentIcons'].length,
                        itemBuilder: (ctx, int i) {
                          final item =
                              homeProvider.paymentWays['AllPaymentIcons'][i];
                          return Padding(
                              padding: EdgeInsets.all(10),
                              child: Column(
                                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: <Widget>[
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: <Widget>[
                                      Text(
                         item['Title']=='Visa'?               "${item['Title']  }" :  item['Title'],
                                        style: TextStyle(
                                            color:
                                                Theme.of(context).primaryColor,
                                            fontSize: 15,
                                            fontStyle: FontStyle.italic),
                                      ),
                                      item['Title']=='Visa'?SizedBox(width: 22):SizedBox(),
                                      Card(
                                        shadowColor: Colors.blue[200],
                                        child: Container(
                                          height: 50,
                                          width: 50,
                                          decoration: BoxDecoration(
                                              border: Border.all(),
                                              borderRadius:
                                                  BorderRadius.circular(5)),
                                          child: FadeInImage.assetNetwork(
                                              fit: BoxFit.fill,
                                              placeholder:
                                                  'assets/lodaing3.gif',
                                              imageErrorBuilder:
                                                  (context, url, error) =>
                                                      new Icon(Icons.error),
                                              image: item['image']),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ));
                        }),
                  );
                });
              }
            }
          }),
    );
  }
}
