import 'package:flutter/material.dart';

class Cart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('Cart'),
            ),
            body: Text('Cart', textAlign: TextAlign.center)


        )
    );
  }

}