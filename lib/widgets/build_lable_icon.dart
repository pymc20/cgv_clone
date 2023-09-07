import 'package:flutter/material.dart';

Widget buildLableIcon(IconData icon, String label) {
  return Column(
    children: [
      Container(
        width: 60,
        height: 60,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50.0), color: Colors.black12),
        child: Icon(icon),
      ),
      const SizedBox(
        height: 5.0,
      ),
      Text(
        label,
        style: const TextStyle(fontSize: 12.0),
      )
    ],
  );
}
