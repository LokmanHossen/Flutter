import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_note/services/auth/bloc/auth_bloc.dart';
import 'package:my_note/services/auth/bloc/auth_event.dart';

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
                context.read<AuthBloc>().add(
                      const AuthEventSendEmailVerification()
                    );
                // AuthService.firebase().sendEmailVerification();
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
                 context.read<AuthBloc>().add(
                      const AuthEventLogOut(),
                    );
                
                // AuthService.firebase().logOut();
                // if (!mounted) return;
                // Navigator.of(context).pushNamedAndRemoveUntil(
                //   registerRoute,
                //   (route) => false,
                // );
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
