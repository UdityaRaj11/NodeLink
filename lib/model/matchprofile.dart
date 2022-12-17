import 'package:flutter/material.dart';

class MatchProfile {
  final String id;
  final String title;
  final String image;
  final String coverimage;
  final String Profession;
  final String Headline;
  final String Education;
  final String Country;
  final String City;
  final String about;
  final String Skill1;
  final String Skill3;
  final String Skill2;
  final String Skill4;
  final String Skill5;
  final String Interest1;
  final String Interest3;
  final String Interest2;
  final String Interest4;
  final String Interest5;
  final Color color;

  const MatchProfile({
    @required this.id,
    @required this.title,
    @required this.image,
    @required this.coverimage,
    @required this.Profession,
    @required this.Headline,
    @required this.Education,
    @required this.Country,
    @required this.City,
    @required this.about,
    @required this.Skill1,
    @required this.Skill3,
    @required this.Skill2,
    @required this.Skill4,
    @required this.Skill5,
    @required this.Interest1,
    @required this.Interest3,
    @required this.Interest2,
    @required this.Interest4,
    @required this.Interest5,
    this.color = Colors.black,
  });
}
