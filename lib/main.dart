import 'package:Node/screens/link_request_screen.dart';
import 'package:Node/screens/linked_nodes_screen.dart';
import 'package:Node/screens/user_screen.dart';
import './screens/profiles_detail_screen.dart';
import '/screens/tabs_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Nodelink',
      theme: ThemeData(
        canvasColor: Color.fromARGB(255, 24, 24, 24),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
              bodyLarge: TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              bodyMedium: TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              titleLarge: TextStyle(
                fontSize: 20,
                color: Color.fromARGB(255, 255, 255, 255),
                fontFamily: 'RobotoCondensed',
                fontWeight: FontWeight.bold,
              ),
            ),
      ),
      routes: {
        '/': (_) => TabsScreen(),
        ProfileDetailScreen.routeName: (_) => ProfileDetailScreen(),
        LinkedNodes.routeName: (_) => LinkedNodes(),
        UserProfile.routeName: (_) => UserProfile(),
        LinkRequestsScreen.routeName: (_) => LinkRequestsScreen(),
      },
    );
  }
}
