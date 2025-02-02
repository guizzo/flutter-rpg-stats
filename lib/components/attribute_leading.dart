import 'package:flutter/material.dart';

class AttributeLeading extends StatelessWidget {

  final int value;

  AttributeLeading({
    required this.value,
  });

  Color _computeColor(int value) {
    switch (value) {
      case 1:
        return Colors.red;
      case <= 3:
        return Colors.yellow.shade700;
      case <= 5:
        return Colors.orange.shade700;
      default:
        return Colors.green;
    }
  }
  
  @override
  Widget build(BuildContext context) {
    return Text(
      '$value', 
      style: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: _computeColor(value),
      ),
    );
  }

}