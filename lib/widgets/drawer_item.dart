import 'package:flutter/material.dart';

import '../data/item_model.dart';

class CustomDrawerItem extends StatelessWidget {
  final ItemModel itemModel;
  const CustomDrawerItem({super.key, required this.itemModel});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(itemModel.icon),
      title: Padding(
        padding: const EdgeInsets.only(left: 16),
        child: FittedBox(
            fit: BoxFit.scaleDown,
            alignment: Alignment.centerLeft,
            child: Text(itemModel.title)),
      ),
    );
  }
}
