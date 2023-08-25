import 'package:flutter/material.dart';
import 'package:my_note/services/auth/auth_exceptions.dart';
import 'package:my_note/services/auth/bloc/auth_bloc.dart';
import 'package:my_note/services/auth/bloc/auth_event.dart';
import 'package:my_note/services/auth/bloc/auth_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_note/utilities/dialogs/error_dialog.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({Key? key}) : super(key: key);

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
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
    // return Scaffold(
    //   appBar: AppBar(
    //     title: Text(" "),
    //   ),
    //   body: FutureBuilder(
    //     future: Firebase.initializeApp(
    //       options: DefaultFirebaseOptions.currentPlatform,
    //     ),
    //     builder: (context, snapshot) {
    //       switch (snapshot.connectionState) {
    //         case ConnectionState.done:

    //         default:
    //           return const Text('Loading...');
    //       }
    //     },
    //   ),
    // );
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) async {
        if (state is AuthStateRegistering) {
          if (state.exception is WeakPasswordAuthException) {
            await showErrorDialog(context, 'Weak Password');
          } else if (state.exception is EmailAlreadyInUseAuthException) {
            await showErrorDialog(context, 'Email is aready use');
          } else if (state.exception is GenericAuthException) {
            await showErrorDialog(context, 'Failed to reguister');
          } else if (state.exception is InvalidEmailAuthException) {
            await showErrorDialog(context, 'Invalid email');
          }
        }
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Register'),
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

                context.read<AuthBloc>().add(
                      AuthEventregister(
                        email,
                        password,
                      ),
                    );

                // try {
                //   await AuthService.firebase().createUser(
                //     email: email,
                //     password: password,
                //   );
                //   AuthService.firebase().sendEmailVerification();
                //   if (!mounted) return;
                //   Navigator.of(context).pushNamed(verifyEmailRoute);
                // } on WeakPasswordAuthException {
                //   await showErrorDialog(
                //     context,
                //     'weak Password ',
                //   );
                // } on EmailAlreadyInUseAuthException {
                //   await showErrorDialog(
                //     context,
                //     'Email is already in use ',
                //   );
                // } on InvalidEmailAuthException {
                //   await showErrorDialog(
                //     context,
                //     'This is an invalid email address ',
                //   );
                // } on GenericAuthException {
                //   await showErrorDialog(
                //     context,
                //     'Failed to register',
                //   );
                // }
              },
              child: const Text("Register"),
            ),
            TextButton(
              onPressed: () {
                context.read<AuthBloc>().add(
                      const AuthEventLogOut(),
                    );
                // Navigator.of(context).pushNamedAndRemoveUntil(
                //   loginRoute,
                //   (route) => false,
                // );
              },
              child: const Text('Already Registered? Login here!'),
            ),
          ],
        ),
      ),
    );
  }
}
