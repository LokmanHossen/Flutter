import 'package:flutter/material.dart';
import 'package:my_note/utilities/dialogs/generic_dialog.dart';

Future<bool> showLogOutDialog(BuildContext context) {
  return showGenericDialog<bool>(
    context: context,
    title: 'Log Out',
    content: 'Are you sure you wnat to log out?',
    optionsBuiolder: () => {
      'Cancle': false,
      'Log out': true,
    },
  ).then(
    (value) => value ?? false,
  );
}
