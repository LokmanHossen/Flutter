import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'dart:developer' as devtools show log;

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  late final TextEditingController _email;
  late final TextEditingController _password;

  @override
  void initState() {
    _email = TextEditingController();
    _password = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _email.dispose();
    _password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Column(
        children: [
          TextField(
            controller: _email,
            enableSuggestions: false,
            autocorrect: false,
            keyboardType: TextInputType.emailAddress,
            decoration: const InputDecoration(
              hintText: " Enter Your email here",
            ),
          ),
          TextField(
            controller: _password,
            obscureText: true,
            enableSuggestions: false,
            autocorrect: false,
            decoration:
                const InputDecoration(hintText: " Enter your password here"),
          ),
          TextButton(
            onPressed: () async {
              final email = _email.text;
              final password = _password.text;
              try {
                await FirebaseAuth.instance.signInWithEmailAndPassword(
                  email: email,
                  password: password,
                );

                Navigator.of(context).pushNamedAndRemoveUntil(
                  '/notes/',
                  (route) => false,
                );
                //devtools.log(UserCredential.toString());
                // print(UserCredential);
              } on FirebaseAuthException catch (e) {
                if (e.code == 'user-not-found') {
                  devtools.log("User not found");
                } else if (e.code == 'wrong-password') {
                  devtools.log('Wrong Password');
                }
              }
              // catch (e) {
              //   print("Something bad happend");
              //   print(e.runtimeType);
              //   print(e);
              // }
            },
            child: const Text("LogIn"),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context)
                  .pushNamedAndRemoveUntil('/register/', (route) => false);
            },
            child: const Text('Not register yet? Register here!'),
          ),
        ],
      ),
    );
    // return Scaffold(
    //   appBar: AppBar(
    //     title: const Text("LogIn "),
    //   ),
    //   body: FutureBuilder(
    //     future: Firebase.initializeApp(
    //       options: DefaultFirebaseOptions.currentPlatform,
    //     ),
    //     builder: (context, snapshot) {
    //       switch (snapshot.connectionState) {
    //         case ConnectionState.done:
    //           return ;
    //         default:
    //           return const Text('Loading...');
    //       }
    //     },
    //   ),
    // );
  }
}
