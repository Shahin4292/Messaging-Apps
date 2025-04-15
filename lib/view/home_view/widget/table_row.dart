import 'package:flutter/material.dart';

class UserRow extends StatelessWidget {
  final String name;
  final String date;
  final Color color;
  final BorderRadius? borderRadius;

  const UserRow({
    super.key,
    required this.name,
    required this.date,
    required this.color,
    this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 14, right: 14),
      decoration: BoxDecoration(color: color, borderRadius: borderRadius),
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
      child: Row(
        children: [
          Expanded(child: Text(name)),
          Text(date, style: TextStyle(fontSize: 12)),
        ],
      ),
    );
  }
}