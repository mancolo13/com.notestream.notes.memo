import 'package:flutter/material.dart';
import 'tabs/tab1_screen.dart';
import 'tabs/tab2_screen.dart';
import 'tabs/tab3_screen.dart';
import 'tabs/tab4_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _idx = 0;
  final _tabs = const [Tab1Screen(), Tab2Screen(), Tab3Screen(), Tab4Screen()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: _idx, children: _tabs),
      bottomNavigationBar: NavigationBar(
        selectedIndex: _idx,
        onDestinationSelected: (i) => setState(() => _idx = i),
        destinations: const [
          NavigationDestination(icon: Icon(Icons.edit_note_outlined), selectedIcon: Icon(Icons.edit_note), label: 'Notes'),
          NavigationDestination(icon: Icon(Icons.check_box_outlined), selectedIcon: Icon(Icons.check_box), label: 'Checklists'),
          NavigationDestination(icon: Icon(Icons.push_pin_outlined), selectedIcon: Icon(Icons.push_pin), label: 'Pinned'),
          NavigationDestination(icon: Icon(Icons.archive_outlined), selectedIcon: Icon(Icons.archive), label: 'Archive'),
        ],
      ),
    );
  }
}
