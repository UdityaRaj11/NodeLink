import 'package:flutter/material.dart';
import 'package:Node/dummy_data.dart';
import '../screens/profiles_detail_screen.dart';

class MatchedProfile extends StatelessWidget {
  final String id;
  final String title;
  final String image;
  final String Profession;
  final String Skill1;
  final String Skill3;
  final String Skill2;
  final String Interest1;
  final String Interest3;
  final String Interest2;
  final Color color;

  MatchedProfile(
      {@required this.id,
      @required this.title,
      @required this.image,
      @required this.Profession,
      @required this.Skill1,
      @required this.Skill3,
      @required this.Skill2,
      @required this.Interest1,
      @required this.Interest3,
      @required this.Interest2,
      this.color});

  void selectProfile(BuildContext context) {
    Navigator.of(context).pushNamed(
      ProfileDetailScreen.routeName,
      arguments: id,
    );
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final deviceWidth = mediaQuery.size.width;
    final deviceHeight = mediaQuery.size.height;
    final size = mediaQuery.devicePixelRatio;
    final cardWidth = deviceWidth / 2.2;
    final cardHeight = deviceHeight / 4;
    return InkWell(
      onTap: () => selectProfile(context),
      child: Container(
        width: cardWidth,
        child: Card(
          color: Color.fromARGB(255, 29, 29, 29),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          ),
          elevation: 7,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(4),
                        topRight: Radius.circular(4),
                      ),
                      child: Image.asset(
                        image,
                        height: cardHeight / 1.25,
                        alignment: Alignment.topLeft,
                        width: double.infinity,
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        width: cardWidth / 2,
                        color: Colors.black54,
                        padding: EdgeInsets.symmetric(
                          vertical: 5,
                          horizontal: 20,
                        ),
                        child: Column(
                          children: [
                            FittedBox(
                              fit: BoxFit.fitWidth,
                              child: Text(
                                title,
                                style: TextStyle(
                                    fontSize: mediaQuery.textScaleFactor * 12,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                                softWrap: true,
                                overflow: TextOverflow.fade,
                              ),
                            ),
                            FittedBox(
                              fit: BoxFit.fitWidth,
                              child: Text(
                                Profession,
                                style: TextStyle(
                                    fontSize: mediaQuery.textScaleFactor * 9,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                                softWrap: true,
                                overflow: TextOverflow.fade,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  width: cardWidth,
                  height: cardHeight / 2,
                  padding: EdgeInsets.all(cardWidth / 50),
                  child: Column(children: [
                    Container(
                      padding: EdgeInsets.only(top: cardWidth / 70),
                      width: cardWidth,
                      height: cardHeight / 13,
                      child: FittedBox(
                        fit: BoxFit.fitHeight,
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Skills',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: mediaQuery.textScaleFactor * 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Card(
                          color: Color.fromARGB(255, 34, 34, 34),
                          elevation: 5,
                          child: Container(
                            padding: EdgeInsets.only(
                              top: cardWidth / 80,
                              bottom: cardWidth / 90,
                            ),
                            width: cardWidth / 4.9,
                            height: cardHeight / 14,
                            child: FittedBox(
                              fit: BoxFit.fitHeight,
                              child: Text(
                                Skill1,
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: mediaQuery.textScaleFactor * 10,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                        Card(
                          color: Color.fromARGB(255, 34, 34, 34),
                          elevation: 5,
                          child: Container(
                            padding: EdgeInsets.only(
                              top: cardWidth / 80,
                              bottom: cardWidth / 90,
                            ),
                            width: cardWidth / 4.9,
                            height: cardHeight / 14,
                            child: FittedBox(
                              fit: BoxFit.fitHeight,
                              child: Text(
                                Skill2,
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: mediaQuery.textScaleFactor * 10,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                        Card(
                          color: Color.fromARGB(255, 34, 34, 34),
                          elevation: 5,
                          child: Container(
                            padding: EdgeInsets.only(
                              top: cardWidth / 80,
                              bottom: cardWidth / 90,
                            ),
                            width: cardWidth / 4.9,
                            height: cardHeight / 14,
                            child: FittedBox(
                              fit: BoxFit.fitHeight,
                              child: Text(
                                Skill3,
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: mediaQuery.textScaleFactor * 10,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      width: cardWidth,
                      height: cardHeight / 16.7,
                      child: FittedBox(
                        fit: BoxFit.fitHeight,
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Interests',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: mediaQuery.textScaleFactor * 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Card(
                          color: Color.fromARGB(255, 34, 34, 34),
                          elevation: 5,
                          child: Container(
                            padding: EdgeInsets.only(
                              top: cardWidth / 80,
                              bottom: cardWidth / 90,
                            ),
                            width: cardWidth / 4.9,
                            height: cardHeight / 14,
                            child: FittedBox(
                              fit: BoxFit.fitHeight,
                              child: Text(
                                Interest1,
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: mediaQuery.textScaleFactor * 10,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                        Card(
                          color: Color.fromARGB(255, 34, 34, 34),
                          elevation: 5,
                          child: Container(
                            padding: EdgeInsets.only(
                              top: cardWidth / 80,
                              bottom: cardWidth / 90,
                            ),
                            width: cardWidth / 4.9,
                            height: cardHeight / 14,
                            child: FittedBox(
                              fit: BoxFit.fitHeight,
                              child: Text(
                                Interest2,
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: mediaQuery.textScaleFactor * 10,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                        Card(
                          color: Color.fromARGB(255, 34, 34, 34),
                          elevation: 5,
                          child: Container(
                            padding: EdgeInsets.only(
                                top: cardWidth / 80, bottom: cardWidth / 90),
                            width: cardWidth / 4.9,
                            height: cardHeight / 14,
                            child: FittedBox(
                              fit: BoxFit.fitHeight,
                              child: Text(
                                Interest3,
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: mediaQuery.textScaleFactor * 10,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ]),
                ),
              ]),
        ),
      ),
    );
  }
}
