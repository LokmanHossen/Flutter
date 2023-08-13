import 'package:flutter/material.dart';
import 'package:my_note/utilities/dialogs/generic_dialog.dart';

Future<bool> showDeleteDialog(BuildContext context) {
  return showGenericDialog<bool>(
    context: context,
    title: 'Log Out',
    content: 'Are you sure you wnat to Delete?',
    optionsBuiolder: () => {
      'Cancle': false,
      'Yes': true,
    },
  ).then(
    (value) => value ?? false,
  );
}
