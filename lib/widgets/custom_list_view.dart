import 'package:flutter/material.dart';

import 'item2.dart';

class CustomSliverList extends StatelessWidget {
  const CustomSliverList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: 50,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.only(top: 16.0),
          child: CustomItem2(),
        );
      },
    );
  }
}
