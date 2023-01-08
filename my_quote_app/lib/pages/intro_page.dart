import 'package:flutter/material.dart';
import 'login_page.dart';

//import 'package:my_quote_app/pages/login_page.dart';



class IntroPage extends StatelessWidget {
  IntroPage({Key? key}) : super(key: key);

  double height = 80.0;
  double width = 80.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        margin: EdgeInsets.only(left: 30, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Spacer(),
            Image.asset(
              "image/quote.png",
              height: height,
              width: width,
            ),
            SizedBox(
              height: 50.0,
            ),
            RichText(
              text: TextSpan(
                style: (TextStyle(
                  fontSize: 50,
                  color: Colors.black,
                )),
                children: [
                  TextSpan(text: "Get\n"),
                  TextSpan(
                    text: "Inspired",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                  // onPrimary: Colors.white,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()),
                  );
                },
                child: Text("Let's Go"),
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
