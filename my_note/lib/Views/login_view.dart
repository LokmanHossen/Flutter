import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_note/services/auth/auth_exceptions.dart';
import 'package:my_note/services/auth/bloc/auth_bloc.dart';
import 'package:my_note/services/auth/bloc/auth_event.dart';
import 'package:my_note/services/auth/bloc/auth_state.dart';
import '../utilities/dialogs/error_dialog.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  late final TextEditingController _email;
  late final TextEditingController _password;
  //CloseDialog? _closeDialogHandle;

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
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) async {
        if (state is AuthStateLoggedOut) {
          // final closedialog = _closeDialogHandle;
          // if (!state.isLoading && closedialog != null) {
          //   closedialog();
          //   _closeDialogHandle = null;
          // } else if (state.isLoading && closedialog == null) {
          //   _closeDialogHandle = showLoadingDialog(
          //     context: context,
          //     text: 'Loading........',
          //   );
          // }

          if (state.exception is UserNotFoundAuthException) {
            await showErrorDialog(context, "User not found");
          } else if (state.exception is WrongPasswordAuthException) {
            await showErrorDialog(context, 'Wrong credentials');
          } else if (state.exception is GenericAuthException) {
            await showErrorDialog(context, 'Authentication error');
          }
        }
      },
      child: Scaffold(
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
              decoration: const InputDecoration(
                hintText: " Enter your password here",
              ),
            ),
            TextButton(
              onPressed: () async {
                final email = _email.text;
                final password = _password.text;
                context.read<AuthBloc>().add(
                      AutheventLogIn(
                        email,
                        password,
                      ),
                    );
                // try {

                //   // await AuthService.firebase().logIn(
                //   //   email: email,
                //   //   password: password,
                //   // );
                //   // final user = AuthService.firebase().currentUser;
                //   // if (user?.isEmailVerified ?? false) {
                //   //   //user's emmail is verified
                //   //   if (!mounted) return;
                //   //   Navigator.of(context).pushNamedAndRemoveUntil(
                //   //     notesRoute,
                //   //     (route) => false,
                //   //   );
                //   // } else {
                //   //   // User email NOT vverified
                //   //   if (!mounted) return;
                //   //   Navigator.of(context).pushNamedAndRemoveUntil(
                //   //     verifyEmailRoute,
                //   //     (route) => false,
                //   //   );
                //   // }
                // } on UserNotFoundAuthException {
                //   await showErrorDialog(
                //     context,
                //     'User not found',
                //   );
                // } on WrongPasswordAuthException {
                //   await showErrorDialog(
                //     context,
                //     'Wrong credentials ',
                //   );
                // } on GenericAuthException {
                //   await showErrorDialog(
                //     context,
                //     'Authentication Error',
                //   );
                // }
              },
              child: const Text("LogIn"),
            ),
              TextButton(
              onPressed: () {
                context.read<AuthBloc>().add(
                      const AuthEventForgotPassword(),
                    );
              },
              child: const Text('I forgot my password'),
            ),
            
            TextButton(
              onPressed: () {
                context.read<AuthBloc>().add(
                      const AuthEventShouldRegister(),
                    );
              },
              child: const Text('Not register yet? Register here!'),
            ),
          ],
        ),
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
