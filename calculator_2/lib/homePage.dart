import 'package:math_expressions/math_expressions.dart';

String _expression = '';

void onPressed(String text) {
  if (text == 'C') {
    setState(() {
      _expression = '';
    });
  } else if (text == 'DEL') {
    setState(() {
      _expression = _expression.substring(0, _expression.length - 1);
    });
  }
}

void setState(Null Function() param0) {
}
