import 'package:Node/screens/profiles_detail_screen.dart';
import 'package:Node/screens/user_screen.dart';
import 'package:flutter/material.dart';
import '../dummy_data.dart';

class LinkedNodes extends StatelessWidget {
  static const routeName = '/linked-nodes';
  Widget buildLinkedNodeCard(BuildContext context, Widget child) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(1000)),
      padding: EdgeInsets.all(MediaQuery.of(context).devicePixelRatio * 1),
      height: MediaQuery.of(context).devicePixelRatio * 220,
      width: MediaQuery.of(context).devicePixelRatio * 120,
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final size = mediaQuery.devicePixelRatio;
    final FSize = mediaQuery.textScaleFactor;
    final cardWidth = size * 100;
    final cardHeight = size * 100;
    return Scaffold(
      appBar: AppBar(
        title: Text('Linked Nodes'),
        backgroundColor: Color.fromARGB(255, 29, 29, 29),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: size * 10,
              ),
              child: FittedBox(
                fit: BoxFit.fitWidth,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.white,
                  ),
                  width: mediaQuery.devicePixelRatio * 150,
                  height: mediaQuery.devicePixelRatio * 12,
                  margin: EdgeInsets.only(bottom: size * 10),
                  child: Container(
                    margin: EdgeInsets.only(
                      top: mediaQuery.devicePixelRatio * 1,
                      left: mediaQuery.devicePixelRatio * 4,
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        icon: Icon(Icons.search),
                        label: Text('Search'),
                      ),
                      autofocus: false,
                    ),
                  ),
                ),
              ),
            ),
            buildLinkedNodeCard(
              context,
              ListView.builder(
                scrollDirection: Axis.vertical,
                itemBuilder: (ctx, index) => Container(
                  height: cardHeight / 3.7,
                  width: cardWidth,
                  child: InkWell(
                    child: Stack(
                      children: [
                        Card(
                          color: Color.fromARGB(255, 29, 29, 29),
                          elevation: 7,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              ListTile(
                                leading:
                                    Image.asset(DUMMY_PROFILES[index].image),
                                title: Text(
                                  DUMMY_PROFILES[index].title,
                                  style: TextStyle(color: Colors.white),
                                ),
                                subtitle: Text(DUMMY_PROFILES[index].Profession,
                                    style: TextStyle(
                                        color: Color.fromARGB(
                                            255, 166, 166, 166))),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          top: size * 0,
                          right: size * 2,
                          child: ElevatedButton(
                            style: ButtonStyle(
                                padding: MaterialStateProperty.all<EdgeInsets>(
                                    EdgeInsets.zero),
                                elevation: MaterialStateProperty.all(7),
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Color.fromARGB(255, 90, 90, 90))),
                            child: Text(
                              'Remove',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: mediaQuery.textScaleFactor * 10),
                            ),
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ),
                    onTap: () {
                      Navigator.pushNamed(
                          context, ProfileDetailScreen.routeName,
                          arguments: DUMMY_PROFILES[index].id);
                    },
                  ),
                ),
                itemCount: DUMMY_PROFILES.length - 1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
