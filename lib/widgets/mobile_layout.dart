import 'package:flutter/material.dart';

import 'custom_grid.dart';
import 'custom_list_view.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: SizedBox(height: 16),
        ),
        CustomSliverGrid(),
        SliverPadding(
          padding: EdgeInsets.symmetric(horizontal: 8.0),
          sliver: CustomSliverList(),
        ),
      ],
    );
  }
}
