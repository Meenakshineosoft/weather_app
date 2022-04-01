import 'package:flutter/material.dart';

class Account extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('Account'),
            ),
            body: Text('Account', textAlign: TextAlign.center)


        )
    );
  }

}