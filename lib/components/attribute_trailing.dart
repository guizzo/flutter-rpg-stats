import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AttributeTrailing extends StatelessWidget {
  
  final VoidCallback onPress;

  AttributeTrailing({
    required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPress, 
      child: Icon(CupertinoIcons.add),
      style: ElevatedButton.styleFrom(
        iconColor: Colors.indigo.shade300,
        shape: LinearBorder()
      ),
    );
  }

}