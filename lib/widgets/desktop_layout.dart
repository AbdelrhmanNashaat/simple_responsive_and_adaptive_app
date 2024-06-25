import 'package:flutter/material.dart';
import 'package:simple_responsive_and_adaptive_app/widgets/custom_drawer.dart';
import 'package:simple_responsive_and_adaptive_app/widgets/tablet_layout.dart';

import 'desktop_widget.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        Expanded(flex: 3, child: TabletLayout()),
        Expanded(child: DesktopWidget()),
      ],
    );
  }
}
