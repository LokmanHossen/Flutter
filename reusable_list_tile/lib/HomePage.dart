import 'package:flutter/material.dart';
import 'package:reusable_list_tile/Screen/Widget.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(226, 39, 36, 36),
      appBar: AppBar(
        title: Text("Custom Widget"),
        backgroundColor: Color.fromARGB(215, 14, 17, 20),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          ListTileWidget(
            title: "Mouse",
            subTitle: "A4Tach Mouse",
          ),
          ListTileWidget(
            title: "Laptop",
            subTitle: "ASUS VivoBook OLED",
            leadingIcon: Icons.laptop,
            listTileColor: Color.fromARGB(127, 255, 193, 59),
            iconColor: Colors.blue,
            trailingIcon: Icons.shopping_cart,
          ),
          ListTileWidget(
            title: "Monitor",
            subTitle: "ASUS OLED Mpnitor 1800 x 780",
            leadingIcon: Icons.monitor,
            listTileColor: Color.fromARGB(185, 13, 107, 161),
            iconColor: Colors.blue,
            trailingIcon: Icons.shopping_cart_checkout,
          ),
          ListTileWidget(
            title: "KyeBoard",
            subTitle: "Walton KWG 0008QB",
            leadingIcon: Icons.keyboard,
            listTileColor: Color.fromARGB(255, 5, 97, 51),
            iconColor: Colors.blue,
            trailingIcon: Icons.shopping_cart,
          ),
          ListTileWidget(
            title: "Mother Board",
            subTitle: "ASUS X38  Core i7",
            leadingIcon: Icons.border_clear_rounded,
            listTileColor: Color(0x3C0D11E4),
            iconColor: Colors.blue,
            trailingIcon: Icons.shopping_cart,
          ),
        ],
      ),
    );
  }
}
