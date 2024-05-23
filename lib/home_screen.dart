
import 'package:flutter/material.dart';
import 'package:provider_ejemplo/page1.dart';

import 'page2.dart';
import 'page3.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    super.key,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int _selectedIndex = 0;
  final List<Widget> _pages = <Widget>[
      const Page1(),
      const Page2(),
      const Page3(),
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('page 1'),
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (int index){
          setState(() {
            _selectedIndex  = index;
          });
        },
        items: const [
           BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'page 1',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'page 2',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'page 3',
          )
        ],

      ),
    );
  }
}