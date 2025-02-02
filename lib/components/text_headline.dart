import 'package:flutter/material.dart';

class TextHeadline extends StatelessWidget {

  final String title;
  final TextStyle style;

  const TextHeadline({
    required this.title, 
    required this.style,
  });
  
  @override
  Widget build(BuildContext context) {
    return Text(title, style: style,);
  }

}