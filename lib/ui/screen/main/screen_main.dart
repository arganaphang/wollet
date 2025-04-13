import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wollet/ui/screen/addtransaction/screen_addtransaction.dart';
import 'package:wollet/ui/screen/main/dashboard/dashboard.dart';
import 'package:wollet/ui/screen/main/home/home.dart';
import 'package:wollet/ui/screen/main/setting/setting.dart';

class Fragment {
  final String title;
  final Icon icon;
  final Widget screen;

  Fragment({required this.title, required this.icon, required this.screen});
}

final List<Fragment> fragments = [
  Fragment(title: 'Home', icon: Icon(CupertinoIcons.home), screen: Home()),
  Fragment(
    title: 'Dashboard',
    icon: Icon(CupertinoIcons.chart_bar),
    screen: Dashboard(),
  ),
  Fragment(
    title: 'Settings',
    icon: Icon(CupertinoIcons.settings),
    screen: Setting(),
  ),
];

class ScreenMain extends StatefulWidget {
  static final String routeName = '/';
  const ScreenMain({super.key});

  @override
  State<ScreenMain> createState() => _ScreenMainState();
}

class _ScreenMainState extends State<ScreenMain> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List<Widget> get _destinations =>
      fragments
          .map(
            (fragment) => NavigationDestination(
              icon: fragment.icon,
              label: fragment.title,
            ),
          )
          .toList();

  Widget? get _showFAB {
    if (_selectedIndex == 0) {
      return FloatingActionButton(
        onPressed: () {
          Get.toNamed(ScreenAddtransaction.routeName);
        },
        child: Icon(Icons.add),
      );
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: _showFAB,
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: _onItemTapped,
        destinations: _destinations,
        selectedIndex: _selectedIndex,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: fragments[_selectedIndex].screen,
      ),
    );
  }
}
