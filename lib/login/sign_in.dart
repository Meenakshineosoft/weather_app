import 'package:flutter/material.dart';

class SignIn extends StatelessWidget {
  static const routeName = '/sign_in';

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  Widget signInWith(IconData icon) {
    return Container(
      height: 50,
      width: 115,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.withOpacity(0.4), width: 1),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 24),
          TextButton(onPressed: () {}, child: Text('Sign in')),
        ],
      ),
    );
  }

  Widget userInput(TextEditingController userInput, String hintTitle, TextInputType keyboardType) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      decoration: BoxDecoration(color: Colors.blueGrey.shade100, borderRadius: BorderRadius.circular(30)),
      child: Padding(
        padding: const EdgeInsets.only(left: 25.0, right: 25),
        child: TextField(
          controller: userInput,
          decoration: InputDecoration(
            hintText: hintTitle,
            hintStyle: const TextStyle(fontSize: 18, color: Colors.blueGrey, fontStyle: FontStyle.normal),
          ),
          keyboardType: keyboardType,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            alignment: Alignment.topCenter,
            fit: BoxFit.fill,
            image: NetworkImage(
              'https://images.unsplash.com/photo-1610650695449-9a50cc8b5941?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjN8fHdhbGxwYXBlciUyMGZvciUyMG1vYmlsZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
            ),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              height: 510,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(15), topRight: Radius.circular(15)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const SizedBox(height: 45),
                    userInput(emailController, 'Email', TextInputType.emailAddress),
                    userInput(passwordController, 'Password', TextInputType.visiblePassword),
                    Container(
                      height: 55,
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
                        color: Colors.indigo.shade800,
                        onPressed: () {
                          print(emailController);
                          print(passwordController);
                        },
                        child: const Text('Sign in', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700, color: Colors.white,),),
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Center(child: Text('Forgot password ?',),
                    ),
                    const SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.only(top: 25.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          signInWith(Icons.facebook),
                          signInWith(Icons.zoom_in_sharp),
                        ],
                      ),
                    ),
                    const Divider(thickness: 0, color: Colors.white),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('Don\'t have an account yet ? ', style: TextStyle(color: Colors.grey, fontStyle: FontStyle.italic),),
                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            'Sign Up',
                            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                          ),
                        ),

                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
