// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:masterclass_beginner_to_pro/10_03_navigations/home_page.dart';
import 'package:masterclass_beginner_to_pro/10_03_navigations/profile_page.dart';
import 'package:masterclass_beginner_to_pro/10_03_navigations/settings_page.dart';
import 'package:masterclass_beginner_to_pro/10_04_stateless_statefull_widget/counter_page.dart';

class First_Page extends StatefulWidget {
  const First_Page({super.key});

  @override
  State<First_Page> createState() => _First_PageState();
}

class _First_PageState extends State<First_Page> {
  // this keeps track of the current page to display
  int _selectedIndex = 0;

  // this method updates the new selected index
  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List _pages = [
    // home page
    HomePage(),
    // profile page
    ProfilePage(),
    // counter page
    CounterPage(),
    // setting page
    SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    var scaffold = Scaffold(
      appBar: AppBar(
        title: const Text("1st Page"),
      ),

      drawer: Drawer(
        backgroundColor: Colors.deepPurple,
        child: Column(
          children: [
            // common to place a drawer header here
            const DrawerHeader(
              child: Icon(
                Icons.favorite,
                size: 48,
              ),
            ),

            // home page list tile
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home Page'),
              onTap: () {
                // pop drawer first
                Navigator.pop(context);
                // go to home page
                Navigator.pushNamed(context, '/homepage');
              },
            ),

            // Bottom Navigator Page list tile
            ListTile(
              leading: const Icon(Icons.arrow_downward),
              title: const Text('Bottom Navigator Page'),
              onTap: () {
                // pop drawer first
                Navigator.pop(context);
                // go to home page
                Navigator.pushNamed(context, '/bottomnavigatorpage');
              },
            ),

            // counter page list tile
            ListTile(
              leading: const Icon(Icons.countertops),
              title: const Text("Counter Page"),
              onTap: () {
                // go to counter page
                Navigator.pushNamed(context, '/counterpage');
              },
            ),

            // setting page list tile
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text("Setting sPage"),
              onTap: () {
                // go to setting page
                Navigator.pushNamed(context, '/settingspage');
              },
            ),
          ],
        ),
      ),

      // home page list tile

      body: _pages[_selectedIndex],

      // BottomNavigatorPage
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigateBottomBar,
        items: const [
          // home
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: 'Home',
          ),

          // profile
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
            ),
            label: 'Profile',
          ),

          // counter
          BottomNavigationBarItem(
            icon: Icon(
              Icons.countertops,
            ),
            label: 'Counter',
          ),

          // setings
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
            ),
            label: 'Settings',
          ),
        ],
      ),

      // Center(
      // child: ElevatedButton(
      //   child: const Text("Go to 2nd page"),
      //   onPressed: () {
      //     // navigate to 2nd page
      //     // Navigator.push(
      //     //   context,
      //     //   MaterialPageRoute(
      //     //     builder: (context) => SecondPage(),
      //     //   ),
      //     // );

      //     Navigator.pushNamed(context, '/secondpage');
      //   },
      // ),
      // ),
    );
    return scaffold;
  }
}
