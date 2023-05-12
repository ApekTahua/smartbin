import 'package:flutter/material.dart';
import 'trash_bin_page.dart';
import 'data_log_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    HomePageContent(),
    TrashBinPage(),
    DataLogPage(),
  ];

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
        unselectedItemColor: const Color.fromARGB(255, 255, 255, 255),
        selectedItemColor: const Color.fromARGB(255, 51, 255, 238),
        selectedFontSize: 18,
        unselectedFontSize: 12,
        showUnselectedLabels: false,
        landscapeLayout: BottomNavigationBarLandscapeLayout.spread,
        currentIndex: _currentIndex,
        onTap: _onTabTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home,
                size: 30, color: Color.fromARGB(255, 255, 255, 255)),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.delete,
                size: 30, color: Color.fromARGB(255, 255, 255, 255)),
            label: 'Bin',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.data_usage,
              size: 30,
              color: Color.fromARGB(255, 255, 255, 255),
            ),
            label: 'Data',
          ),
        ],
      ),
    );
  }
}

class HomePageContent extends StatelessWidget {
  const HomePageContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'This is the home page',
        style: TextStyle(fontSize: 24),
      ),
    );
  }
}
