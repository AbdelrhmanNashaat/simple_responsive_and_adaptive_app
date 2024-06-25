import 'package:flutter/material.dart';

import '../data/item_model.dart';
import 'drawer_item.dart';

class CustomDrawerListView extends StatelessWidget {
  const CustomDrawerListView({
    super.key,
  });

  static const List<ItemModel> items = [
    ItemModel(
      title: 'H O M E',
      icon: Icons.home,
    ),
    ItemModel(
      title: 'S E T T I N G S',
      icon: Icons.settings,
    ),
    ItemModel(
      title: 'A B O U T',
      icon: Icons.info,
    ),
    ItemModel(
      title: 'L O G O U T',
      icon: Icons.logout,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: items.length,
      itemBuilder: (context, index) {
        return CustomDrawerItem(itemModel: items[index]);
      },
    );
  }
}
