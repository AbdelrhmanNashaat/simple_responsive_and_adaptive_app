import 'package:flutter/material.dart';
import '../widgets/custom_drawer.dart';
import 'home_view_body.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: const Color(0xffDBDBDB),
      drawer: const CustomDrawer(),
      appBar: MediaQuery.of(context).size.width - 32 < 900
          ? AppBar(
              leading: IconButton(
                onPressed: () => _scaffoldKey.currentState!.openDrawer(),
                icon: const Icon(Icons.menu, color: Colors.white),
              ),
              backgroundColor: Colors.black,
            )
          : null,
      body: const SafeArea(child: HomeViewBody()),
    );
  }
}
