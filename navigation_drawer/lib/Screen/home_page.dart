import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  List<String> product = ["bed", "sofa", "chair"];
  List<String> productDetails = [
    "King Size bed",
    "King Size sofa",
    "Wooden Comfortable chair"
  ];
  List<int> price = [3000, 2500, 1800];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Navigation Drawer'),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const UserAccountsDrawerHeader(
              accountName: Text('LoKMaN'),
              accountEmail: Text('lokmanhossen@gmail.com'),
              currentAccountPicture: CircleAvatar(
                foregroundImage: AssetImage("images/lokman.jpg"),
              ),
              otherAccountsPictures: [
                CircleAvatar(foregroundImage: AssetImage("images/ninja.jpg")),
                CircleAvatar(foregroundImage: AssetImage("images/ninja.jpg"))
              ],
            ),
            // DrawerHeader(
            //   padding: const EdgeInsets.all(00.0),
            //   child: Container(
            //     color: Colors.amber,
            //   ),
            // ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.car_crash),
              title: const Text('Add Card'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.favorite),
              title: const Text('Favorite'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.shopping_cart),
              title: const Text('Shopping cart'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.share),
              title: const Text('Share'),
              onTap: () {},
            ),
            const Padding(
              padding: EdgeInsets.all(30.0),
              child: Text('Labels'),
            ),
            ListTile(
              leading: const Icon(Icons.label),
              title: const Text('red'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.label),
              title: const Text('Green'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.label),
              title: const Text('Blue'),
              onTap: () {},
            ),
            const Divider(),

            ListTile(
              leading: const Icon(Icons.people),
              title: const Text('People'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.exit_to_app),
              title: const Text('EXIT'),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: Container(
        child: ListView.builder(
            itemCount: product.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: CircleAvatar(child: Text(product[index][0]),),
                title: Text(product[index]),
                subtitle: Text(productDetails[index]),
                trailing: Text(price[index].toString()),
              );
            }),
      ),
    );
  }
}
