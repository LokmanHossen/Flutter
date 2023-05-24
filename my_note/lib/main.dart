import 'dart:js';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_note/Views/login_view.dart';

import 'firebase_options.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    ),
  );
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page "),
      ),
      body: FutureBuilder(
        future: Firebase.initializeApp(
          options: DefaultFirebaseOptions.currentPlatform,
        ),
        builder: (context, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.done:
              final user = FirebaseAuth.instance.currentUser;
              if (user?.emailVerified ?? false) {
                // print('You are verified user');
              } else {
                //print('You need to verify your Email first');
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const VerifyEnmailView(),
                  ),
                );
              }
              return Text("Done");
            // print(FirebaseAuth.instance.currentUser);

            default:
              return const Text('Loading...');
          }
        },
      ),
    );
  }
}

class VerifyEnmailView extends StatefulWidget {
  const VerifyEnmailView({Key? key}) : super(key: key);

  @override
  State<VerifyEnmailView> createState() => _VerifyEnmailViewState();
}

class _VerifyEnmailViewState extends State<VerifyEnmailView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
