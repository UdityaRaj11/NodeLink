import 'dart:io';

import 'package:Node/screens/profiles_detail_screen.dart';
import 'package:flutter/material.dart';
import '../dummy_data.dart';

class ExploreScreen extends StatelessWidget {
  Widget buildEventCard(BuildContext context, Widget child) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(1000)),
      padding: EdgeInsets.all(MediaQuery.of(context).devicePixelRatio * 1),
      height: MediaQuery.of(context).devicePixelRatio * 115,
      width: MediaQuery.of(context).devicePixelRatio * 120,
      child: child,
    );
  }

  Widget buildOptionGrid(BuildContext context, Widget child) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(1000)),
      padding: EdgeInsets.all(MediaQuery.of(context).devicePixelRatio * 1),
      height: MediaQuery.of(context).devicePixelRatio * 15,
      width: MediaQuery.of(context).devicePixelRatio * 120,
      child: child,
    );
  }

  Widget buildSectionTitle(BuildContext context, String text) {
    return Container(
      alignment: Alignment.topLeft,
      margin: EdgeInsets.all(
        MediaQuery.of(context).devicePixelRatio * 4,
      ),
      child: Text(text, style: Theme.of(context).textTheme.titleLarge),
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
      body: Column(
        children: [
          Container(
            width: double.infinity,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(
                          top: size * 10,
                        )),
                        Padding(
                          padding: EdgeInsets.only(left: size * 8),
                          child: FittedBox(
                            fit: BoxFit.fitWidth,
                            child: Text(
                              'Search for Nodes',
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
                              'Gatherings & Events!',
                              style: TextStyle(
                                fontSize: mediaQuery.textScaleFactor * 20,
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: size * 5),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.white,
                          ),
                          width: mediaQuery.devicePixelRatio * 150,
                          height: mediaQuery.devicePixelRatio * 10,
                          margin: EdgeInsets.only(bottom: size * 5),
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
                        Row(
                          children: [
                            buildSectionTitle(context, 'Participate'),
                            SizedBox(
                              width: size * 50,
                            ),
                            OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                side: BorderSide(
                                    color: Color.fromARGB(255, 75, 75, 75),
                                    width: 2),
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
                        buildOptionGrid(
                          context,
                          ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (ctx, index) => InkWell(
                              onTap: () {},
                              child: Card(
                                elevation: 7,
                                color: EVENT_TYPES[index].color,
                                child: OutlinedButton(
                                  child: Text(
                                    EVENT_TYPES[index].title,
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  onPressed: () {},
                                ),
                              ),
                            ),
                            itemCount: EVENT_TYPES.length,
                          ),
                        ),
                        Row(
                          children: [
                            buildSectionTitle(context, 'Upcoming Trees'),
                            SizedBox(
                              width: size * 34,
                            ),
                            OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                side: BorderSide(
                                    color: Color.fromARGB(255, 75, 75, 75),
                                    width: 2),
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
                        buildEventCard(
                          context,
                          ListView.builder(
                            scrollDirection: Axis.vertical,
                            itemBuilder: (ctx, index) => Container(
                              height: cardHeight,
                              width: cardWidth,
                              child: Card(
                                color: Color.fromARGB(255, 29, 29, 29),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                elevation: 7,
                                margin: EdgeInsets.all(size * 1),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    Stack(
                                      children: [
                                        ClipRRect(
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(4),
                                            topRight: Radius.circular(4),
                                          ),
                                          child: Image.asset(
                                            DUMMY_EVENTS[index].image,
                                            height: cardHeight / 1.9,
                                            alignment: Alignment.topCenter,
                                            width: double.infinity,
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                        Container(
                                          margin:
                                              EdgeInsets.only(top: size * 60),
                                          width: size * 120,
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            children: <Widget>[
                                              Container(
                                                alignment: Alignment.topLeft,
                                                margin: EdgeInsets.only(
                                                    left: cardHeight / 15,
                                                    top: cardHeight / 70),
                                                child: FittedBox(
                                                  fit: BoxFit.fitWidth,
                                                  child: Text(
                                                    DUMMY_EVENTS[index]
                                                        .TreeName,
                                                    style: TextStyle(
                                                      fontSize: FSize * 14,
                                                      color: Color.fromARGB(
                                                          255, 222, 222, 222),
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                alignment: Alignment.topLeft,
                                                margin: EdgeInsets.only(
                                                    left: cardHeight / 15,
                                                    top: cardHeight / 70),
                                                padding: EdgeInsets.only(
                                                    right: cardWidth / 10),
                                                height: cardHeight / 10,
                                                child: Text(
                                                  DUMMY_EVENTS[index]
                                                      .ShortDescription,
                                                  style: TextStyle(
                                                    fontSize: FSize * 10,
                                                    color: Color.fromARGB(
                                                        255, 101, 101, 101),
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  TextButton(
                                                    child: const Text(
                                                      'REGISTER',
                                                      style: TextStyle(
                                                          color: Colors.grey),
                                                    ),
                                                    onPressed: () {},
                                                  ),
                                                  TextButton(
                                                    child:
                                                        const Text('KNOW MORE'),
                                                    onPressed: () {},
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            itemCount: DUMMY_EVENTS.length,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
