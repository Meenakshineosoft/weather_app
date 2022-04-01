import 'package:flutter/material.dart';

class NearBy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("NearBy"),
            ),
            body: Text('NearBy', textAlign: TextAlign.center)


        )
    );

  }

}