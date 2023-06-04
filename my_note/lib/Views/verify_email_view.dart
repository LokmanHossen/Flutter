import 'package:flutter/material.dart';
import 'package:my_note/constants/routes.dart';
import 'package:my_note/services/auth/auth_service.dart';

class VerifyEnmailView extends StatefulWidget {
  const VerifyEnmailView({Key? key}) : super(key: key);

  @override
  State<VerifyEnmailView> createState() => _VerifyEnmailViewState();
}

class _VerifyEnmailViewState extends State<VerifyEnmailView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Verify Email'),
      ),
      body: Center(
        child: Column(
          children: [
            const Text(
              'Please Verify your email address',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
            ),
            TextButton(
              onPressed: () async {
                AuthService.firebase().sendEmailVerification();
              },
              child: const Text(
                'Send Email verification',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
              ),
            ),
            TextButton(
              onPressed: () async {
                AuthService.firebase().logOut();
                if (!mounted) return;
                Navigator.of(context).pushNamedAndRemoveUntil(
                  registerRoute,
                  (route) => false,
                );
              },
              child: const Text(
                'Restart',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
