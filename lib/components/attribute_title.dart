import 'package:flutter/material.dart';

class AttributeTitle extends StatelessWidget {

  final String title;

  AttributeTitle({
    required this.title,
  });
  
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w300,
      ),
    );
  }

}