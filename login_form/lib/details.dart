import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  Details({Key? key, required this.productName}) : super(key: key);

  String productName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(productName),
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back)),
        ),
        body: Container(
          padding: EdgeInsets.all(20.0),
          child: ListView(
            children: [
              ListTile(
                leading: Icon(Icons.account_balance_wallet_outlined),
                title: Text(productName),
              ),
            ],
          ),
        ));
  }
}
