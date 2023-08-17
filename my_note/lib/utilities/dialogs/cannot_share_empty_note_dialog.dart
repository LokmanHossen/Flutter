import 'package:flutter/material.dart';
import 'package:my_note/utilities/dialogs/generic_dialog.dart';


Future<void> showCannotShareEmptyNotedialog(BuildContext context) {
  return showGenericDialog(
      context: context,
      title: 'Sharing',
      content: 'You cannot share an emoty note',
      optionsBuiolder: () => {
            'OK': Null, 
          });
}
