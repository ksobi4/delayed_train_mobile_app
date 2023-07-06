// ignore_for_file: prefer_const_constructors

import 'package:auto_route/auto_route.dart';
import 'package:delayed_train/presentation/search_connections_screen.dart';
import 'package:delayed_train/presentation/search_delay_screen.dart';
import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _page = 1;
  late PageController _pageController;

  @override
  void initState() {
    _pageController = PageController(initialPage: _page);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: SalomonBottomBar(
          backgroundColor: Colors.black12,
          currentIndex: _page,
          onTap: (index) {
            _pageController.animateToPage(index,
                duration: const Duration(milliseconds: 500),
                curve: Curves.easeIn);
          },
          items: [
            SalomonBottomBarItem(
                icon: Icon(Icons.train),
                title: Text('Połączenia'),
                selectedColor: Colors.purple),
            SalomonBottomBarItem(
                icon: Icon(Icons.timer_sharp),
                title: Text('Opóźnienia'),
                selectedColor: Colors.red),
          ],
        ),
        body: PageView(
          controller: _pageController,
          onPageChanged: (newpage) {
            setState(() {
              _page = newpage;
            });
          },
          children: const [
            SearchConnectionsScreen(),
            SearchDelayScreen(),
          ],
        ),
      ),
    );
  }
}
