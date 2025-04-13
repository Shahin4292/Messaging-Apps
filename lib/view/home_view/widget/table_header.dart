import 'package:flutter/material.dart';

class TableHeader extends StatelessWidget {
  const TableHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 14, right: 14),
      decoration: BoxDecoration(
        color: const Color(0xFFf5f7fb),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(6),
          topRight: Radius.circular(6),
        ),
      ),
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
      child: Row(
        children: const [
          Expanded(
            child: Text('Name', style: TextStyle(fontWeight: FontWeight.bold)),
          ),
          Text('Date Time', style: TextStyle(fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}