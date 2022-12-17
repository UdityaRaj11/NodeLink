import 'package:Node/screens/profiles_detail_screen.dart';

import 'explore_screen.dart';
import '../model/meal.dart';
import 'notification_screen.dart';
import 'chats_screen.dart';
import 'Home.dart';
import 'package:flutter/material.dart';

class TabsScreen extends StatefulWidget {
  final List<Meal> favoriteMeals;

  TabsScreen(this.favoriteMeals);
  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  List<Map<String, Object>> _pages;
  @override
  void initState() {
    _pages = [
      {'page': HomeScreen(), 'title': 'Node'},
      {'page': ExploreScreen(), 'title': 'Node'},
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
        title: Text(_pages[_selectedPageIndex]['title']),
        backgroundColor: Color.fromARGB(255, 29, 29, 29),
        actions: <Widget>[
          InkWell(
            child: Padding(
              padding: const EdgeInsets.only(right: 15),
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
