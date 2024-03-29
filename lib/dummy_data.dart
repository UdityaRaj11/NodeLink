import 'package:flutter/material.dart';
import 'model/matchprofile.dart';
import 'model/Tree.dart';
import 'model/e_type.dart';

const DUMMY_PROFILES = const [
  MatchProfile(
      id: 'p1',
      title: 'Omkar',
      image: 'assets/2.jpeg',
      coverimage: 'assets/coder.jpg',
      color: Color.fromARGB(255, 29, 29, 29),
      Profession: 'Developer',
      Headline: 'Chill & Code | Developer life | Music Vibes',
      Education: 'Siksha ${'O'} Anusandhan',
      Country: 'India',
      City: 'Bhubneshwar, Odisha',
      about: 'Pro-gramer and a Pro-gamer with mind blowing reflexes.',
      Skill1: 'Python',
      Skill2: 'Java',
      Skill3: 'Flutter',
      Skill4: 'Figma',
      Skill5: 'C++',
      Interest1: 'T.T.',
      Interest2: 'Music',
      Interest3: 'Code',
      Interest4: 'Games',
      Interest5: 'Chill'),
  MatchProfile(
      id: 'p2',
      title: 'Baibhav',
      image: 'assets/6.jpeg',
      coverimage: 'assets/Student.jpg',
      color: Color.fromARGB(255, 29, 29, 29),
      Profession: 'Student',
      Headline: 'Chill & Code | Developer life | Music Vibes',
      Education: 'Siksha ${'O'} Anusandhan',
      Country: 'India',
      City: 'Bhubneshwar, Odisha',
      about: 'Pro-gramer and a Pro-gamer with mind blowing reflexes.',
      Skill1: 'Python',
      Skill2: 'React.js',
      Skill3: 'Flutter',
      Skill4: 'Figma',
      Skill5: 'C++',
      Interest1: 'T.T',
      Interest2: 'Music',
      Interest3: 'Walking',
      Interest4: 'Games',
      Interest5: 'chill'),
  MatchProfile(
      id: 'p3',
      title: 'Hidden',
      image: 'assets/3.jpeg',
      coverimage: 'assets/teacher.jpg',
      color: Color.fromARGB(255, 29, 29, 29),
      Profession: 'Teacher',
      Headline: 'Chill & Code | Developer life | Music Vibes',
      Education: 'Siksha ${'O'} Anusandhan',
      Country: 'India',
      City: 'Bhubneshwar, Odisha',
      about: 'Pro-gramer and a Pro-gamer with mind blowing reflexes.',
      Skill1: 'Python',
      Skill2: 'C++',
      Skill3: 'C#',
      Skill4: 'Figma',
      Skill5: 'C++',
      Interest1: 'T.T.',
      Interest2: 'Music',
      Interest3: 'Books',
      Interest4: 'Games',
      Interest5: 'chill'),
  MatchProfile(
      id: 'p4',
      title: 'Sam',
      image: 'assets/4.jpeg',
      coverimage: 'assets/gamer.jpg',
      color: Color.fromARGB(255, 29, 29, 29),
      Profession: 'Gamer',
      Headline: 'Chill & Code | Developer life | Music Vibes',
      Education: 'Siksha ${'O'} Anusandhan',
      Country: 'India',
      City: 'Bhubneshwar, Odisha',
      about: 'Pro-gramer and a Pro-gamer with mind blowing reflexes.',
      Skill1: 'Python',
      Skill2: 'Illustrator',
      Skill3: 'Figma',
      Skill4: 'Figma',
      Skill5: 'C++',
      Interest1: 'T.T.',
      Interest2: 'FPP',
      Interest3: 'Gaming',
      Interest4: 'Games',
      Interest5: 'chill'),
  MatchProfile(
      id: 'p5',
      title: 'Ankit',
      image: 'assets/7.jpeg',
      coverimage: 'assets/student1.jpg',
      color: Color.fromARGB(255, 29, 29, 29),
      Profession: 'Student',
      Headline: 'Chill & Code | Developer life | Music Vibes',
      Education: 'Siksha ${'O'} Anusandhan',
      Country: 'India',
      City: 'Bhubneshwar, Odisha',
      about: 'Pro-gramer and a Pro-gamer with mind blowing reflexes.',
      Skill1: 'Flutter',
      Skill2: 'HTML',
      Skill3: 'Figma',
      Skill4: 'Figma',
      Skill5: 'C++',
      Interest1: 'Cycling',
      Interest2: 'Walking',
      Interest3: 'Boxing',
      Interest4: 'Games',
      Interest5: 'chill'),
  MatchProfile(
      id: 'p6',
      title: 'Raman',
      image: 'assets/8.png',
      coverimage: 'assets/learner.jpg',
      color: Color.fromARGB(255, 29, 29, 29),
      Profession: 'learner',
      Headline: 'Chill & Code | Developer life | Music Vibes',
      Education: 'Siksha ${'O'} Anusandhan',
      Country: 'India',
      City: 'Bhubneshwar, Odisha',
      about: 'Pro-gramer and a Pro-gamer with mind blowing reflexes.',
      Skill1: 'Flutter',
      Skill2: 'Art',
      Skill3: 'Figma',
      Skill4: 'Figma',
      Skill5: 'C++',
      Interest1: 'Tennis',
      Interest2: 'Music',
      Interest3: 'Dance',
      Interest4: 'Games',
      Interest5: 'chill'),
];

const USER_PROFILE = MatchProfile(
    id: 'p7',
    title: 'Uditya R.',
    image: 'assets/me.jpeg',
    coverimage: 'assets/coder.jpg',
    color: Color.fromARGB(255, 29, 29, 29),
    Profession: 'Developer',
    Headline: 'Flutter | Ideas | Innovation | Start-up',
    Education: 'Siksha ${'O'} Anusandhan',
    Country: 'India',
    City: 'Bhubneshwar, Odisha',
    about:
        'I am striving to overcome problems people face and provide great innovation solutions to them.',
    Skill1: 'Flutter',
    Skill2: 'React.js',
    Skill3: 'Java',
    Skill4: 'Python',
    Skill5: 'Figma',
    Interest1: 'Tennis',
    Interest2: 'Music',
    Interest3: 'Learning',
    Interest4: 'Books',
    Interest5: 'Chill');

const DUMMY_EVENTS = const [
  Tree(
    image: 'assets/E1.jpg',
    TreeName: 'ARCH STARTUP COMPETITION',
    ShortDescription:
        'This equity-free 50,000 dollar grant competition is open to startups from around the world.',
  ),
  Tree(
    image: 'assets/Event2.jpg',
    TreeName: 'IN CONNECT SHENZHEN’22',
    ShortDescription:
        'an in-person networking event for the game industry representatives based in India.',
  ),
  Tree(
    image: 'assets/Event3.png',
    TreeName: 'PRAGYAN',
    ShortDescription:
        'So, if you really want to see the magic of technologies, this is the place for you.',
  ),
  Tree(
    image: 'assets/Event4.jpg',
    TreeName: 'NO GOOD',
    ShortDescription:
        'Experiance the Environment of roasting with great humor indeed.',
  ),
  Tree(
    image: 'assets/Event5.jpg',
    TreeName: 'YOUTH YEAR CELEBRATION',
    ShortDescription:
        'This New year is for the youth to strive, let us start with new year itself. ROCK AND ROLL!!',
  ),
  Tree(
    image: 'assets/Event6.jpg',
    TreeName: 'SOA MODEL UNITED NATIONS',
    ShortDescription:
        'Let us come together, experiance and learn about United Nations Organizations.',
  ),
];

const EVENT_TYPES = const [
  e_type(
      id: 'e1', title: 'Competitions', color: Color.fromARGB(255, 178, 58, 49)),
  e_type(
      id: 'e2',
      title: 'Hiring Challenges',
      color: Color.fromARGB(255, 1, 89, 160)),
  e_type(
      id: 'e3', title: 'Hackathons', color: Color.fromARGB(255, 202, 129, 21)),
  e_type(id: 'e4', title: 'College Festivals', color: Colors.purple),
  e_type(id: 'e5', title: 'Workshops', color: Colors.pink),
  e_type(
      id: 'e6',
      title: 'Cultural Events',
      color: Color.fromARGB(255, 0, 71, 129)),
  e_type(
      id: 'e7',
      title: 'Conferences',
      color: Color.fromARGB(255, 255, 122, 113)),
];
