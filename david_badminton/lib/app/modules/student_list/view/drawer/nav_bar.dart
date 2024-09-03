import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      
      child: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.add),
            title: Text('chuc nang 1'),
            onTap: () => print('chuc nang 1'),
          )
        ],
      ),
    );
  }
}
