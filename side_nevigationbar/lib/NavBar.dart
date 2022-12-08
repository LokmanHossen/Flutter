import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('LokMan'),
            accountEmail: Text('lokmanhossen230@gmail.com'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.network(
                  'https://media.licdn.com/dms/image/D5603AQHk434iV-fhGg/profile-displayphoto-shrink_800_800/0/1669472463784?e=1675900800&v=beta&t=7kI7OM6qJRC4xDDyi0vnoM9H3uChGcurc4CwikTCzEI',
                  height: 90.0,
                  width: 90.0,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.blue,
              image: DecorationImage(
                image: NetworkImage(
                  'https://images.template.net/wp-content/uploads/2014/11/Natural-Facebook-Cover-Photo.jpg',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
