import 'package:flutter/material.dart';
import 'package:progetto1/components/attribute_leading.dart';
import 'package:progetto1/components/attribute_title.dart';
import 'package:progetto1/components/attribute_trailing.dart';

class PlayerAttribute extends StatefulWidget {

  final int value;
  final String skill;
  final VoidCallback onPress;

  PlayerAttribute({
    required this.value,
    required this.skill,
    required this.onPress,
  });

  @override
  State<StatefulWidget> createState() => PlayerAttributeState();

}

class PlayerAttributeState extends State<PlayerAttribute> {

  late int value;
  late String skill;
  late VoidCallback onPress;

  @override
  void initState() {
    value = widget.value;
    skill = widget.skill;
    onPress = widget.onPress;
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: AttributeLeading(value: widget.value),
      title: AttributeTitle(title: widget.skill),
      trailing: AttributeTrailing(onPress: widget.onPress),
    );
  }
  
}