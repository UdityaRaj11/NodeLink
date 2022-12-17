import 'package:flutter/material.dart';
import '../dummy_data.dart';

class NotificationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final size = mediaQuery.devicePixelRatio;
    return Scaffold(
        body: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
                left: size * 8, top: size * 10, bottom: size * 10),
            child: FittedBox(
              fit: BoxFit.fitWidth,
              child: Text(
                'Notifications',
                style: TextStyle(
                  fontSize: mediaQuery.textScaleFactor * 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Card(
            color: Color.fromARGB(255, 29, 29, 29),
            elevation: 7,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ListTile(
                  leading: Image.asset(DUMMY_PROFILES[1].image),
                  title: Text(
                    'Baibhav',
                    style: TextStyle(color: Colors.white),
                  ),
                  subtitle: Text('Sent you a link Request.',
                      style:
                          TextStyle(color: Color.fromARGB(255, 166, 166, 166))),
                ),
              ],
            ),
          ),
          Card(
            color: Color.fromARGB(255, 29, 29, 29),
            elevation: 7,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ListTile(
                  leading: Image.asset(DUMMY_PROFILES[2].image),
                  title: Text(
                    'Abhi',
                    style: TextStyle(color: Colors.white),
                  ),
                  subtitle: Text(
                    'Offered you a Handshake!',
                    style: TextStyle(
                      color: Color.fromARGB(255, 166, 166, 166),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Card(
            color: Color.fromARGB(255, 29, 29, 29),
            elevation: 7,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ListTile(
                  leading: Image.asset(DUMMY_PROFILES[0].image),
                  title: Text(
                    'Omkar',
                    style: TextStyle(color: Colors.white),
                  ),
                  subtitle: Text(
                    'One of the Most Suited Node present near you.',
                    style: TextStyle(
                      color: Color.fromARGB(255, 166, 166, 166),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Card(
            color: Color.fromARGB(255, 29, 29, 29),
            elevation: 7,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ListTile(
                  leading: Image.asset(DUMMY_PROFILES[4].image),
                  title: Text('Ankit', style: TextStyle(color: Colors.white)),
                  subtitle: Text(
                    'Accepted your Link Request.',
                    style: TextStyle(
                      color: Color.fromARGB(255, 166, 166, 166),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
