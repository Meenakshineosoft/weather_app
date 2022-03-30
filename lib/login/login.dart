import 'package:flutter/material.dart';
import 'package:weather_app/login/sign_in.dart';
import 'package:weather_app/screens/home_page.dart';

class Login extends StatelessWidget{


  static const routeName = '/login';

  const Login({Key? key}) : super(key: key);

  Widget buttonWidget(Color buttonColor, String title, Color textColor, BuildContext ctx) {
    return Container(
      height: 80,
      width: double.infinity,
      padding: const EdgeInsets.only(top: 25, left: 24, right: 24),
      child: RaisedButton(
        elevation: 0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
        color: buttonColor,
        onPressed: () {
          Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
            return SignIn();
          }));
        },
        child: Text(title, style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700, color: textColor,),),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //body: Stack(
      //children: [
        body:  Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    'https://images.unsplash.com/photo-1610650695449-9a50cc8b5941?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjN8fHdhbGxwYXBlciUyMGZvciUyMG1vYmlsZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60'),
                fit: BoxFit.fill),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  flex: 6,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('HELLO', style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold, color: Colors.black),),
                          Text('Lorem ipsum dolor sit amet', style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold, color: Colors.indigo),),
                        ]
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Column(
                    children: [
                      buttonWidget(Colors.indigo, 'Sign In', Colors.white, context),
                      buttonWidget(Colors.white, 'Sign Up', Colors.indigo.shade800, context),
                    ],
                  ),
                ),
              ],
            ),
          ),
        )
    );
  }
}