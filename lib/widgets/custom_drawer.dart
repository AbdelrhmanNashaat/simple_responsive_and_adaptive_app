import 'package:flutter/material.dart';

import 'drawer_list_view.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return const Drawer(
      elevation: 0,
      backgroundColor: Color(0xffDBDBDB),
      child: Column(
        children: [
          DrawerHeader(
            child: Icon(
              Icons.favorite,
              size: 54,
            ),
          ),
          SizedBox(height: 16),
          CustomDrawerListView(),
        ],
      ),
    );
  }
}
