import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu),
          ),
          title: const Text("AppBar"),
          backgroundColor: Colors.blueGrey,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(20),
              // topRight: Radius.circular(20),
              bottomLeft: Radius.circular(20),
            ),
          ),
          flexibleSpace: ClipRRect(
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(20),
                // topRight: Radius.circular(20),
                bottomLeft: Radius.circular(20)),
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                
                    image: NetworkImage(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQqqQeeUSAwaBIfTunoPwuNLcFxnuLL-V9jiw&usqp=CAU"),
                        fit: BoxFit.cover,
                    ),
              ),
            ),
          ),
          // centerTitle: true,
          //backgroundColor: Colors.blueGrey,
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.notifications_none),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.account_circle),
            ),
          ],
          // elevation: 30,
          // flexibleSpace: Container(
          //   decoration: const BoxDecoration(

          //     //   gradient: LinearGradient(
          //     //   colors: [Colors.green, Colors.red],
          //     //   begin: Alignment.bottomRight,
          //     //   end: Alignment.topLeft,
          //     // )
          //   ),
          // ),
          bottom: const TabBar(
            indicatorColor: Colors.white,
            indicatorWeight: 3,
            //isScrollable: true,
            tabs: [
              Tab(
                icon: Icon(Icons.home),
                text: "Home",
              ),
              Tab(
                icon: Icon(Icons.feed),
                text: "Feed",
              ),
              Tab(
                icon: Icon(Icons.person),
                text: "Profile",
              ),
              Tab(
                icon: Icon(Icons.settings),
                text: "Settinfs",
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            buildPage('Home Page'),
            buildPage('Feed page'),
            buildPage('Profile Page'),
            buildPage('Setttings Page'),
          ],
        ),
      ),
    );
  }

  buildPage(String text) => Center(
        child: Text(
          text,
          style: const TextStyle(fontSize: 28),
        ),
      );
}
