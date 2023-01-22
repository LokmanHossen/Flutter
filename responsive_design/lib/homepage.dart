import 'package:flutter/material.dart';
import 'package:responsive_design/responsive/desktop_body.dart';
import 'package:responsive_design/responsive/mobile_body.dart';
import 'package:responsive_design/responsive/responsive_layout.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    //final currntWidth = MediaQuery.of(context).size.width;

    return Scaffold(
    
      body: ResponsiveLayout(
        
        mobileBody: MyMobileBody(),
        desktopBody: MyDesktopBody(),
      ),
    );
  }
}
