import 'package:calculation_practice_web/screens/homepage_screen.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentPageIndex = 0;
  bool wideScreen = false;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    final double width = MediaQuery.of(context).size.width;
    wideScreen = width > 600;
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Scaffold(
      bottomNavigationBar: wideScreen
          ? null
          : NavigationBar(
              onDestinationSelected: (int index) {
                setState(() {
                  currentPageIndex = index;
                });
              },
              indicatorColor: Colors.amber,
              selectedIndex: currentPageIndex,
              destinations: const <Widget>[
                NavigationDestination(
                  selectedIcon: Icon(Icons.home),
                  icon: Icon(Icons.home_outlined),
                  label: 'Home',
                ),
                NavigationDestination(
                  icon: Badge(child: Icon(Icons.notifications_sharp)),
                  label: 'Notifications',
                ),
                NavigationDestination(
                  icon: Badge(
                    label: Text('2'),
                    child: Icon(Icons.messenger_sharp),
                  ),
                  label: 'Messages',
                ),
              ],
            ),
      body: wideScreen
          ? Row(
              children: [
                NavigationRail(destinations: const <NavigationRailDestination>[
                  NavigationRailDestination(
                      icon: Icon(Icons.account_circle), label: Text("label")),
                  NavigationRailDestination(
                      icon: Icon(Icons.account_circle), label: Text("label")),
                  NavigationRailDestination(
                      icon: Icon(Icons.account_circle), label: Text("label")),
                ], selectedIndex: currentPageIndex,
                  onDestinationSelected: (int index) {
                    setState(() {
                      currentPageIndex = index;
                    });
                  },),
                const VerticalDivider(thickness: 1, width: 1),
                Expanded(
                    child: <Widget>[
                      const Text("1"),
                      const Text("2"),
                      const Text("3"),
                    ][currentPageIndex]),
              ],
            )
          : <Widget>[
        const Text("1"),
        const Text("2"),
        const Text("3"),
            ][currentPageIndex],
    );
  }
}
