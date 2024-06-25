import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:simple_responsive_and_adaptive_app/widgets/item1.dart';

import 'item2.dart';

class DesktopWidget extends StatelessWidget {
  const DesktopWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 16.0),
      child: Column(
        children: [
          Expanded(flex: 2, child: CustomItem1()),
          SizedBox(height: 16),
          Expanded(child: CustomItem2()),
        ],
      ),
    );
  }
}
