import '../dummy_data.dart';
import 'package:flutter/material.dart';

class ProfileDetailScreen extends StatelessWidget {
  static const routeName = '/profile-detail';

  Widget buildSectionTitle(BuildContext context, String text) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Text(text, style: Theme.of(context).textTheme.titleLarge),
    );
  }

  Widget buildContainer(Widget child) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(4),
      ),
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      height: 200,
      width: 500,
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final size = MediaQuery.of(context).devicePixelRatio;
    final textsize = MediaQuery.of(context).textScaleFactor;
    final deviceWidth = mediaQuery.size.width;
    final deviceHeight = mediaQuery.size.height;
    final profileId = ModalRoute.of(context).settings.arguments as String;
    final selectedProfile = DUMMY_PROFILES
        .lastWhere((matchedProfile) => matchedProfile.id == profileId);
    return Scaffold(
      appBar: AppBar(
        title: Text('Node'),
        backgroundColor: Color.fromARGB(255, 29, 29, 29),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              height: deviceHeight / 2,
              child: Stack(
                children: [
                  Container(
                    height: deviceHeight / 2,
                    child: Card(
                      color: Color.fromARGB(255, 29, 29, 29),
                      elevation: 7,
                      child: Container(
                        margin: EdgeInsets.only(bottom: deviceHeight / 4),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(selectedProfile.coverimage),
                              opacity: 100,
                              fit: BoxFit.cover),
                        ),
                        width: double.infinity,
                        child: Text(''),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: deviceHeight / 5,
                    left: deviceWidth / 25,
                    child: Container(
                      height: deviceHeight / 8,
                      width: deviceWidth / 3.7,
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(4),
                          topRight: Radius.circular(4),
                        ),
                        child: Image.asset(
                          selectedProfile.image,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: deviceHeight / 5,
                    right: deviceWidth / 25,
                    child: Text(
                      selectedProfile.Profession,
                      style: TextStyle(
                          color: Colors.blue, fontSize: textsize * 20),
                    ),
                  ),
                  Positioned(
                    bottom: deviceHeight / 6,
                    right: deviceWidth / 25,
                    child: Text(
                      selectedProfile.Education,
                      style: TextStyle(
                          color: Color.fromARGB(255, 226, 226, 226),
                          fontSize: textsize * 14),
                    ),
                  ),
                  Positioned(
                    bottom: deviceHeight / 7,
                    right: deviceWidth / 25,
                    child: Text(
                      selectedProfile.City +
                          ',' +
                          ' ' +
                          selectedProfile.Country,
                      style: TextStyle(
                          color: Color.fromARGB(255, 172, 172, 172),
                          fontSize: textsize * 12),
                    ),
                  ),
                  Positioned(
                    bottom: deviceHeight / 6.5,
                    left: deviceWidth / 15,
                    child: Text(
                      selectedProfile.title,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: textsize * 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Positioned(
                    bottom: deviceHeight / 10,
                    left: deviceWidth / 12.5,
                    child: FittedBox(
                      fit: BoxFit.contain,
                      child: Container(
                        width: deviceWidth,
                        child: Text(
                          selectedProfile.Headline,
                          style: TextStyle(
                              color: Color.fromARGB(255, 240, 240, 240),
                              fontSize: textsize * 12),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                      bottom: deviceHeight / 50,
                      left: deviceWidth / 25,
                      child: ElevatedButton(
                        style: ButtonStyle(
                            elevation: MaterialStateProperty.all(7),
                            backgroundColor:
                                MaterialStateProperty.all<Color>(Colors.green)),
                        child: Text(
                          'Link',
                          style: TextStyle(color: Colors.white),
                        ),
                        onPressed: () {},
                      )),
                  Positioned(
                      bottom: deviceHeight / 50,
                      left: deviceWidth / 3.5,
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          side: BorderSide(
                              color: Color.fromARGB(255, 75, 75, 75), width: 2),
                        ),
                        child: Text(
                          'Message',
                          style:
                              TextStyle(color: Color.fromARGB(255, 75, 75, 75)),
                        ),
                        onPressed: () {},
                      )),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: size * 2),
              height: deviceHeight / 7,
              width: deviceWidth,
              child: Card(
                color: Color.fromARGB(255, 29, 29, 29),
                elevation: 7,
                child: Container(
                  padding: const EdgeInsets.all(10),
                  height: deviceHeight / 7,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "About",
                        style: TextStyle(
                            color: Color.fromARGB(255, 240, 240, 240),
                            fontSize: textsize * 15,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Text(
                        selectedProfile.about,
                        style: TextStyle(
                            color: Color.fromARGB(255, 173, 173, 173),
                            fontSize: textsize * 12),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: size * 2),
              height: deviceHeight / 7,
              width: deviceWidth,
              child: Card(
                color: Color.fromARGB(255, 29, 29, 29),
                elevation: 7,
                child: Container(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "Skills",
                        style: TextStyle(
                            color: Color.fromARGB(255, 240, 240, 240),
                            fontSize: textsize * 15,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: size * 2),
                            child: Card(
                              elevation: 7,
                              color: Color.fromARGB(255, 29, 29, 29),
                              child: FittedBox(
                                fit: BoxFit.fitWidth,
                                child: Text(
                                  selectedProfile.Skill1,
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 173, 173, 173),
                                      fontSize: textsize * 12),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: size * 2),
                            child: Card(
                              elevation: 7,
                              color: Color.fromARGB(255, 29, 29, 29),
                              child: FittedBox(
                                fit: BoxFit.fitWidth,
                                child: Text(
                                  selectedProfile.Skill2,
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 173, 173, 173),
                                      fontSize: textsize * 12),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: size * 2),
                            child: Card(
                              elevation: 7,
                              color: Color.fromARGB(255, 29, 29, 29),
                              child: FittedBox(
                                fit: BoxFit.fitWidth,
                                child: Text(
                                  selectedProfile.Skill3,
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 173, 173, 173),
                                      fontSize: textsize * 12),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: size * 2),
                            child: Card(
                              elevation: 7,
                              color: Color.fromARGB(255, 29, 29, 29),
                              child: FittedBox(
                                fit: BoxFit.fitWidth,
                                child: Text(
                                  selectedProfile.Skill4,
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 173, 173, 173),
                                      fontSize: textsize * 12),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: size * 2),
                            child: Card(
                              elevation: 7,
                              color: Color.fromARGB(255, 29, 29, 29),
                              child: FittedBox(
                                fit: BoxFit.fitWidth,
                                child: Text(
                                  selectedProfile.Skill5,
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 173, 173, 173),
                                      fontSize: textsize * 12),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: size * 2),
              height: deviceHeight / 7,
              width: deviceWidth,
              child: Card(
                color: Color.fromARGB(255, 29, 29, 29),
                elevation: 7,
                child: Container(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "Interests",
                        style: TextStyle(
                            color: Color.fromARGB(255, 240, 240, 240),
                            fontSize: textsize * 15,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: size * 2),
                            child: Card(
                              elevation: 7,
                              color: Color.fromARGB(255, 29, 29, 29),
                              child: FittedBox(
                                fit: BoxFit.fitWidth,
                                child: Text(
                                  selectedProfile.Interest1,
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 173, 173, 173),
                                      fontSize: textsize * 12),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: size * 2),
                            child: Card(
                              elevation: 7,
                              color: Color.fromARGB(255, 29, 29, 29),
                              child: FittedBox(
                                fit: BoxFit.fitWidth,
                                child: Text(
                                  selectedProfile.Interest2,
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 173, 173, 173),
                                      fontSize: textsize * 12),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: size * 2),
                            child: Card(
                              elevation: 7,
                              color: Color.fromARGB(255, 29, 29, 29),
                              child: FittedBox(
                                fit: BoxFit.fitWidth,
                                child: Text(
                                  selectedProfile.Interest3,
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 173, 173, 173),
                                      fontSize: textsize * 12),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: size * 2),
                            child: Card(
                              elevation: 7,
                              color: Color.fromARGB(255, 29, 29, 29),
                              child: FittedBox(
                                fit: BoxFit.fitWidth,
                                child: Text(
                                  selectedProfile.Interest4,
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 173, 173, 173),
                                      fontSize: textsize * 12),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: size * 2),
                            child: Card(
                              elevation: 7,
                              color: Color.fromARGB(255, 29, 29, 29),
                              child: FittedBox(
                                fit: BoxFit.fitWidth,
                                child: Text(
                                  selectedProfile.Interest5,
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 173, 173, 173),
                                      fontSize: textsize * 12),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        child: Icon(Icons.handshake),
        onPressed: () {},
      ),
    );
  }
}
