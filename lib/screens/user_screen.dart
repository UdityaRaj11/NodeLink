import 'package:Node/dummy_data.dart';
import 'package:Node/screens/link_request_screen.dart';
import 'package:Node/screens/linked_nodes_screen.dart';
import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget {
  static const routeName = '/user-profile';
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).devicePixelRatio;
    final mediaQuery = MediaQuery.of(context);
    final textsize = MediaQuery.of(context).textScaleFactor;
    final deviceWidth = mediaQuery.size.width;
    final deviceHeight = mediaQuery.size.height;
    final selectedProfile = USER_PROFILE;
    return Scaffold(
      appBar: AppBar(
        title: Text('My Profile'),
        backgroundColor: Color.fromARGB(255, 29, 29, 29),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Stack(
              children: [
                Container(
                  height: deviceHeight / 2,
                  child: Card(
                    color: Color.fromARGB(255, 29, 29, 29),
                    elevation: 7,
                    child: Stack(
                      children: [
                        Positioned(
                          child: Container(
                            height: deviceHeight / 2,
                            margin: EdgeInsets.only(bottom: deviceHeight / 4),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(selectedProfile.coverimage),
                                opacity: 100,
                                fit: BoxFit.cover,
                              ),
                            ),
                            width: double.infinity,
                            child: Text(''),
                          ),
                        ),
                        Positioned(
                          bottom: deviceHeight / 3.7,
                          right: deviceWidth / 25,
                          child: InkWell(
                            child: Icon(
                              Icons.edit,
                              color: Color.fromARGB(255, 226, 226, 226),
                            ),
                            onTap: () {},
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  bottom: deviceHeight / 5,
                  left: deviceWidth / 25,
                  child: Stack(
                    children: [
                      Container(
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
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: InkWell(
                          child: Icon(
                            Icons.edit,
                            color: Color.fromARGB(255, 226, 226, 226),
                          ),
                          onTap: () {},
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  bottom: deviceHeight / 5,
                  right: deviceWidth / 25,
                  child: Text(
                    selectedProfile.Profession,
                    style:
                        TextStyle(color: Colors.blue, fontSize: textsize * 20),
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
                    selectedProfile.City + ',' + ' ' + selectedProfile.Country,
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
                          fontSize: textsize * 15,
                        ),
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
                    child: Column(
                      children: [
                        Text(
                          '${DUMMY_PROFILES.length - 1}',
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255)),
                        ),
                        Text(
                          'Linked Nodes',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, LinkedNodes.routeName);
                    },
                  ),
                ),
                Positioned(
                  bottom: deviceHeight / 50,
                  left: deviceWidth / 2.2,
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      side: BorderSide(
                        color: Color.fromARGB(255, 75, 75, 75),
                        width: 2,
                      ),
                    ),
                    child: Column(
                      children: [
                        Text(
                          '1',
                          style: TextStyle(
                            color: Color.fromARGB(255, 68, 157, 71),
                          ),
                        ),
                        Text(
                          'Link Requests',
                          style: TextStyle(
                            color: Color.fromARGB(255, 75, 75, 75),
                          ),
                        ),
                      ],
                    ),
                    onPressed: () {
                      Navigator.pushNamed(
                        context,
                        LinkRequestsScreen.routeName,
                      );
                    },
                  ),
                ),
              ],
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
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "About",
                            style: TextStyle(
                              color: Color.fromARGB(255, 240, 240, 240),
                              fontSize: textsize * 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          InkWell(
                            child: Text(
                              "Edit",
                              style: TextStyle(
                                color: Color.fromARGB(255, 113, 113, 113),
                                fontSize: textsize * 11,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            onTap: () {},
                          ),
                        ],
                      ),
                      Text(
                        selectedProfile.about,
                        style: TextStyle(
                          color: Color.fromARGB(255, 173, 173, 173),
                          fontSize: textsize * 12,
                        ),
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
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Skills",
                            style: TextStyle(
                              color: Color.fromARGB(255, 240, 240, 240),
                              fontSize: textsize * 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          InkWell(
                            child: Text(
                              "Edit",
                              style: TextStyle(
                                color: Color.fromARGB(255, 113, 113, 113),
                                fontSize: textsize * 11,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            onTap: () {},
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            child: Card(
                              elevation: 7,
                              color: Color.fromARGB(255, 29, 29, 29),
                              child: FittedBox(
                                fit: BoxFit.fitWidth,
                                child: Text(
                                  selectedProfile.Skill1,
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 173, 173, 173),
                                    fontSize: textsize * 12,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            child: Card(
                              elevation: 7,
                              color: Color.fromARGB(255, 29, 29, 29),
                              child: FittedBox(
                                fit: BoxFit.fitWidth,
                                child: Text(
                                  selectedProfile.Skill2,
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 173, 173, 173),
                                    fontSize: textsize * 12,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
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
                          MyCard(
                            text: selectedProfile.Skill1,
                            textsize: textsize,
                          ),
                          MyCard(
                            text: selectedProfile.Skill2,
                            textsize: textsize,
                          ),
                          MyCard(
                            text: selectedProfile.Skill5,
                            textsize: textsize,
                          ),
                          MyCard(
                            text: selectedProfile.Skill5,
                            textsize: textsize,
                          ),
                          MyCard(
                            text: selectedProfile.Skill5,
                            textsize: textsize,
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
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Interests",
                            style: TextStyle(
                                color: Color.fromARGB(255, 240, 240, 240),
                                fontSize: textsize * 15,
                                fontWeight: FontWeight.bold),
                          ),
                          InkWell(
                            child: Text(
                              "Edit",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 113, 113, 113),
                                  fontSize: textsize * 11,
                                  fontWeight: FontWeight.bold),
                            ),
                            onTap: () {},
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          MyCard(
                            text: selectedProfile.Interest1,
                            textsize: textsize,
                          ),
                          MyCard(
                            text: selectedProfile.Interest2,
                            textsize: textsize,
                          ),
                          MyCard(
                            text: selectedProfile.Interest3,
                            textsize: textsize,
                          ),
                          MyCard(
                            text: selectedProfile.Interest4,
                            textsize: textsize,
                          ),
                          MyCard(
                            text: selectedProfile.Interest5,
                            textsize: textsize,
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
        backgroundColor: Color.fromARGB(255, 145, 145, 145),
        child: Icon(Icons.settings),
        onPressed: () {},
      ),
    );
  }
}

class MyCard extends StatelessWidget {
  const MyCard({
    Key key,
    @required this.text,
    @required this.textsize,
  }) : super(key: key);

  final String text;
  final double textsize;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        elevation: 7,
        color: Color.fromARGB(255, 29, 29, 29),
        child: FittedBox(
          fit: BoxFit.fitWidth,
          child: Text(
            text,
            style: TextStyle(
              color: Color.fromARGB(255, 173, 173, 173),
              fontSize: textsize * 12,
            ),
          ),
        ),
      ),
    );
  }
}
