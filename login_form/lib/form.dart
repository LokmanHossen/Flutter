import 'package:flutter/material.dart';
import 'package:login_form/details.dart';

class MyForm extends StatefulWidget {
  const MyForm({Key? key}) : super(key: key);

  @override
  State<MyForm> createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  var _productName;
  final _productContoller = TextEditingController();

  @override
  void dispose() {
    _productContoller.dispose();
  }

  // @override
  // void initState() {
  //   super.initState();

  //   _productContoller.addListener(_updateText);
  // }

  // void _updateText() {
  //   setState(() {});
  // }

  void _updateText() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form'),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(30.0),
        child: ListView(
          children: [
            TextFormField(
              controller: _productContoller,
              // onChanged: (val) {
              //   _updateText(val);
              // },
              decoration: const InputDecoration(
                labelText: 'Product Name',
                prefixIcon: Icon(Icons.verified_user_outlined),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            myBtn(context)
            //  Text("Product Name is ${_productContoller.text}"),
            // TextFormField(
            //   decoration: InputDecoration(
            //     hintText: 'Product Name',
            //     icon: Icon(Icons.shopping_cart_sharp),
            //     border: OutlineInputBorder(),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }

  OutlinedButton myBtn(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        minimumSize: const Size(200, 50),
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return Details(productName: _productContoller.text);
            },
          ),
        );
      },
      child: Text(
        "Submit Form",
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }
}
