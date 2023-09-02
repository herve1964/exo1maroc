import 'package:flutter/material.dart';
import 'menu_items.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mon application'),
        centerTitle: true, // Aligns the title to the center
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
        actions: [
          Center(
            child: Image.asset(
              'lib/images/maphoto.jpg',
              width: 50,
              height: 50,
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: menuItems.map((item) {
            return ListTile(
              title: Text(item.title),
              leading: Icon(item.icon),
              onTap: () {
                Navigator.pop(context);
                item.onTap();
              },
            );
          }).toList(),
        ),
      ),
    );
  }
}