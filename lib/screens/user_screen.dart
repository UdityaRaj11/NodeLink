import 'package:Node/dummy_data.dart';
import 'package:Node/screens/link_request_screen.dart';
import 'package:Node/screens/linked_nodes_screen.dart';
import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget {
  static const routeName = '/user-profile';
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).devicePixelRatio;
    final textsize = MediaQuery.of(context).textScaleFactor;
    final profileId = ModalRoute.of(context).settings.arguments as String;
    final selectedProfile = USER_PROFILE;
    return Scaffold(
      appBar: AppBar(
        title: Text('My Profile'),
        backgroundColor: Color.fromARGB(255, 29, 29, 29),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: size * 150,
                  child: Card(
                    color: Color.fromARGB(255, 29, 29, 29),
                    elevation: 7,
                    child: Stack(
                      children: [
                        Positioned(
                          child: Container(
                            margin: EdgeInsets.only(bottom: size * 70),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(selectedProfile.coverimage),
                                  opacity: 100,
                                  fit: BoxFit.cover),
                            ),
                            height: size * 80,
                            width: double.infinity,
                            child: Text(''),
                          ),
                        ),
                        Positioned(
                          bottom: size * 75,
                          right: size * 5,
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
                  bottom: size * 55,
                  left: size * 5,
                  child: Stack(
                    children: [
                      Container(
                        height: size * 35,
                        width: size * 35,
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
                  bottom: size * 53,
                  right: size * 10,
                  child: Text(
                    selectedProfile.Profession,
                    style:
                        TextStyle(color: Colors.blue, fontSize: textsize * 20),
                  ),
                ),
                Positioned(
                  bottom: size * 44,
                  right: size * 10,
                  child: Text(
                    selectedProfile.Education,
                    style: TextStyle(
                        color: Color.fromARGB(255, 226, 226, 226),
                        fontSize: textsize * 14),
                  ),
                ),
                Positioned(
                  bottom: size * 37,
                  right: size * 10,
                  child: Text(
                    selectedProfile.City + ',' + ' ' + selectedProfile.Country,
                    style: TextStyle(
                        color: Color.fromARGB(255, 172, 172, 172),
                        fontSize: textsize * 12),
                  ),
                ),
                Positioned(
                  bottom: size * 43,
                  left: size * 10,
                  child: Text(
                    selectedProfile.title,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: textsize * 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Positioned(
                  bottom: size * 25,
                  left: size * 10,
                  child: Container(
                    width: size * 100,
                    child: FittedBox(
                      child: Text(
                        selectedProfile.Headline,
                        style: TextStyle(
                            color: Color.fromARGB(255, 240, 240, 240),
                            fontSize: textsize * 15),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: size * 8,
                  left: size * 10,
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
                  bottom: size * 8,
                  left: size * 65,
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      side: BorderSide(
                          color: Color.fromARGB(255, 75, 75, 75), width: 2),
                    ),
                    child: Column(
                      children: [
                        Text(
                          '1',
                          style: TextStyle(
                              color: Color.fromARGB(255, 68, 157, 71)),
                        ),
                        Text(
                          'Link Requests',
                          style:
                              TextStyle(color: Color.fromARGB(255, 75, 75, 75)),
                        ),
                      ],
                    ),
                    onPressed: () {
                      Navigator.pushNamed(
                          context, LinkRequestsScreen.routeName);
                    },
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: size * 2),
              height: size * 40,
              width: size * 150,
              child: Card(
                color: Color.fromARGB(255, 29, 29, 29),
                elevation: 7,
                child: Container(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        children: [
                          Text(
                            "About",
                            style: TextStyle(
                                color: Color.fromARGB(255, 240, 240, 240),
                                fontSize: textsize * 15,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: size * 80,
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
              height: size * 35,
              width: size * 150,
              child: Card(
                color: Color.fromARGB(255, 29, 29, 29),
                elevation: 7,
                child: Container(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        children: [
                          Text(
                            "Skills",
                            style: TextStyle(
                                color: Color.fromARGB(255, 240, 240, 240),
                                fontSize: textsize * 15,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: size * 80,
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
                      const SizedBox(
                        height: 12,
                      ),
                      Row(
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
              height: size * 35,
              width: size * 150,
              child: Card(
                color: Color.fromARGB(255, 29, 29, 29),
                elevation: 7,
                child: Container(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        children: [
                          Text(
                            "Interests",
                            style: TextStyle(
                                color: Color.fromARGB(255, 240, 240, 240),
                                fontSize: textsize * 15,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: size * 70,
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
                      const SizedBox(
                        height: 12,
                      ),
                      Row(
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
        backgroundColor: Color.fromARGB(255, 145, 145, 145),
        child: Icon(Icons.settings),
        onPressed: () {},
      ),
    );
  }
}
