import 'package:Node/screens/profiles_detail_screen.dart';
import 'package:Node/screens/user_screen.dart';

import 'explore_screen.dart';
import '../model/e_type.dart';
import 'notification_screen.dart';
import 'chats_screen.dart';
import 'nodes_screen.dart';
import 'package:flutter/material.dart';

class TabsScreen extends StatefulWidget {
  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  List<Map<String, Object>> _pages;
  @override
  void initState() {
    _pages = [
      {'page': ExploreScreen(), 'title': 'Node'},
      {'page': HomeScreen(), 'title': 'Node'},
      {'page': NotificationScreen(), 'title': 'Node'},
      {'page': ChatsScreen(), 'title': 'Node'},
    ];
    super.initState();
  }

  int _selectedPageIndex = 0;

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('NodeLink'),
        backgroundColor: Color.fromARGB(255, 29, 29, 29),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, UserProfile.routeName);
              },
              child: CircleAvatar(
                radius: 18,
                child: ClipOval(
                  child: Image.asset('assets/me.jpeg'),
                ),
              ),
            ),
          ),
        ],
      ),
      body: _pages[_selectedPageIndex]['page'],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        backgroundColor: Color.fromARGB(255, 29, 29, 29),
        unselectedItemColor: Color.fromARGB(255, 118, 118, 118),
        selectedItemColor: Color.fromARGB(255, 101, 215, 0),
        selectedFontSize: 20,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: _selectedPageIndex,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).primaryColor,
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).primaryColor,
            icon: Icon(Icons.category),
            label: '',
          ),
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).primaryColor,
            icon: Icon(Icons.notifications),
            label: '',
          ),
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).primaryColor,
            icon: Icon(Icons.chat),
            label: '',
          ),
        ],
      ),
    );
  }
}
