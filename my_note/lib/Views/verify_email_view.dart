import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class VerifyEnmailView extends StatefulWidget {
  const VerifyEnmailView({Key? key}) : super(key: key);

  @override
  State<VerifyEnmailView> createState() => _VerifyEnmailViewState();
}

class _VerifyEnmailViewState extends State<VerifyEnmailView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('Please Verify your email address'),
        TextButton(
          onPressed: () async {
            final user = FirebaseAuth.instance.currentUser;
            await user?.sendEmailVerification();
          },
          child: const Text('Send Email verification'),
        ),
      ],
    );
  }
}