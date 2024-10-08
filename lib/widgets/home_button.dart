import 'package:flutter/material.dart';

class HomeButton extends StatefulWidget {
  const HomeButton({super.key});

  @override
  State<HomeButton> createState() => _HomeButtonState();
}

class _HomeButtonState extends State<HomeButton> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.orange[800],
        onTap: _onItemTapped,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                size: 32,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite,
                size: 32,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.notifications,
                size: 32,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.people,
                size: 32,
              ),
              label: ''),
        ]);
  }
}
