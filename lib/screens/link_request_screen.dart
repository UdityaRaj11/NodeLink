import 'package:Node/screens/profiles_detail_screen.dart';
import 'package:flutter/material.dart';
import '../dummy_data.dart';

class LinkRequestsScreen extends StatelessWidget {
  static const routeName = '/link-request-screen';
  Widget buildLinkedNodeCard(BuildContext context, Widget child) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(1000)),
      padding: EdgeInsets.all(MediaQuery.of(context).devicePixelRatio * 1),
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final size = mediaQuery.devicePixelRatio;
    final deviceWidth = mediaQuery.size.width;
    final deviceHeight = mediaQuery.size.height;
    final cardWidth = deviceWidth;
    final cardHeight = deviceHeight / 2.6;
    return Scaffold(
      appBar: AppBar(
        title: Text('Link Requests'),
        backgroundColor: Color.fromARGB(255, 29, 29, 29),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            buildLinkedNodeCard(
              context,
              ListView.builder(
                scrollDirection: Axis.vertical,
                itemBuilder: (ctx, index) => Container(
                  height: cardHeight / 3.2,
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
                                leading: Image.asset(DUMMY_PROFILES[5].image),
                                title: Text(
                                  DUMMY_PROFILES[5].title,
                                  style: TextStyle(color: Colors.white),
                                ),
                                subtitle: Text(DUMMY_PROFILES[5].Profession,
                                    style: TextStyle(
                                        color: Color.fromARGB(
                                            255, 166, 166, 166))),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          top: size * 0,
                          right: cardWidth / 5,
                          child: ElevatedButton(
                            style: ButtonStyle(
                                padding: MaterialStateProperty.all<EdgeInsets>(
                                    EdgeInsets.zero),
                                elevation: MaterialStateProperty.all(7),
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.green)),
                            child: Text(
                              'Accept',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: mediaQuery.textScaleFactor * 10),
                            ),
                            onPressed: () {},
                          ),
                        ),
                        Positioned(
                          top: size * 0,
                          right: cardWidth / 60,
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
                itemCount: 1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
