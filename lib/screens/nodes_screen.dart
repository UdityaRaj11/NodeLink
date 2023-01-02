import 'package:Node/screens/profiles_detail_screen.dart';
import 'package:Node/widgets/MatchedProfile.dart';
import 'package:flutter/material.dart';
import '../dummy_data.dart';

class HomeScreen extends StatelessWidget {
  Widget buildSectionTitle(BuildContext context, String text) {
    return Container(
      alignment: Alignment.topLeft,
      margin: EdgeInsets.all(
        MediaQuery.of(context).devicePixelRatio * 5,
      ),
      child: Text(text, style: Theme.of(context).textTheme.titleLarge),
    );
  }

  Widget buildContainer(BuildContext context, Widget child) {
    return Container(
      padding: EdgeInsets.all(MediaQuery.of(context).devicePixelRatio * 1),
      height: MediaQuery.of(context).size.height / 2.859,
      width: MediaQuery.of(context).size.width / 1,
      child: child,
    );
  }

  Widget buildImageProfile(BuildContext context, Widget child) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(1000)),
      padding: EdgeInsets.all(MediaQuery.of(context).devicePixelRatio * 1),
      height: MediaQuery.of(context).size.height / 10,
      width: MediaQuery.of(context).size.width / 1,
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final deviceWidth = mediaQuery.size.width;
    final deviceHeight = mediaQuery.size.height;
    final size = mediaQuery.devicePixelRatio;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
                padding: EdgeInsets.only(
              top: deviceHeight / 30,
            )),
            Padding(
              padding: EdgeInsets.only(left: size * 8),
              child: FittedBox(
                fit: BoxFit.fitWidth,
                child: Text(
                  'Search Nodes to ',
                  style: TextStyle(
                    fontSize: mediaQuery.textScaleFactor * 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: size * 8),
              child: FittedBox(
                fit: BoxFit.fitWidth,
                child: Text(
                  'Create Connections!',
                  style: TextStyle(
                    fontSize: mediaQuery.textScaleFactor * 20,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: deviceHeight / 30,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.white,
              ),
              width: deviceWidth,
              height: deviceHeight / 30,
              margin: EdgeInsets.only(bottom: deviceHeight / 30),
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
            Container(
              padding: EdgeInsets.only(right: 10),
              width: deviceWidth,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  buildSectionTitle(context, 'Preferred Nodes'),
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      side: BorderSide(
                          color: Color.fromARGB(255, 75, 75, 75), width: 2),
                    ),
                    child: Text(
                      'See all',
                      style: TextStyle(
                          fontSize: mediaQuery.textScaleFactor * 10,
                          color: Color.fromARGB(255, 75, 75, 75)),
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            buildContainer(
              context,
              ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (ctx, index) => MatchedProfile(
                    id: DUMMY_PROFILES[index].id,
                    title: DUMMY_PROFILES[index].title,
                    image: DUMMY_PROFILES[index].image,
                    Profession: DUMMY_PROFILES[index].Profession,
                    Skill1: DUMMY_PROFILES[index].Skill1,
                    Skill3: DUMMY_PROFILES[index].Skill3,
                    Skill2: DUMMY_PROFILES[index].Skill2,
                    Interest1: DUMMY_PROFILES[index].Interest1,
                    Interest3: DUMMY_PROFILES[index].Interest3,
                    Interest2: DUMMY_PROFILES[index].Interest2),
                itemCount: DUMMY_PROFILES.length,
              ),
            ),
            Container(
              padding: EdgeInsets.only(right: 10),
              width: deviceWidth,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  buildSectionTitle(context, 'Nearby Nodes'),
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      side: BorderSide(
                          color: Color.fromARGB(255, 75, 75, 75), width: 2),
                    ),
                    child: Text(
                      'See all',
                      style: TextStyle(
                          fontSize: mediaQuery.textScaleFactor * 10,
                          color: Color.fromARGB(255, 75, 75, 75)),
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            buildImageProfile(
              context,
              ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (ctx, index) => InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, ProfileDetailScreen.routeName,
                        arguments: DUMMY_PROFILES[index].id);
                  },
                  child: Card(
                    elevation: 0,
                    color: Colors.transparent,
                    child: CircleAvatar(
                      radius: deviceWidth / 13,
                      backgroundImage: AssetImage(DUMMY_PROFILES[index].image),
                    ),
                  ),
                ),
                itemCount: DUMMY_PROFILES.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
