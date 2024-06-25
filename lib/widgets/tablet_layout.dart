import 'package:flutter/material.dart';
import 'custom_list_view.dart';
import 'item1.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: SizedBox(height: 16),
          ),
          SliverPadding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              sliver: TabletList()),
          SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            sliver: CustomSliverList(),
          ),
        ],
      ),
    );
  }
}

class TabletList extends StatelessWidget {
  const TabletList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: 160,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => const AspectRatio(
            aspectRatio: 1,
            child: Padding(
              padding: EdgeInsets.only(right: 16),
              child: CustomItem1(),
            ),
          ),
          itemCount: 15,
        ),
      ),
    );
  }
}
