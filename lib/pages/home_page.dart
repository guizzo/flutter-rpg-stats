import 'package:flutter/material.dart';
import 'package:progetto1/components/player_attribute.dart';
import 'package:progetto1/components/text_headline.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  Map<String, int> skills = {
    'Strength': 5,
    'Dexterity': 3,
    'Constitution': 4,
    'Intelligence': 2,
    'Wisdom': 1,
    'Charisma': 4,
    'Luck': 3,
  };

  void increaseSkill(String skill) {
    setState(() => skills[skill] = skills[skill]! + 1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarContent(),
      body: body(),
    );
  }

  AppBar appBarContent() {
    return AppBar(
      title: TextHeadline(
        title: 'Character Statistics',
        style: TextStyle(color: Colors.black54),
      ),
      centerTitle: true,
      backgroundColor: Colors.indigo.shade300,
    );
  }

  Widget body() {
    return ListView(
      children: skills.keys.map((String s) {
        return PlayerAttribute(
          value: skills[s]!,
          skill: s,
          onPress: () => increaseSkill(s),
        );
      }).toList(),
    );
  }
}
