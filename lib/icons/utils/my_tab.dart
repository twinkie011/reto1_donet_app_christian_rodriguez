import 'package:flutter/material.dart';

class MyTab extends StatelessWidget {
  final String iconPath;
  const MyTab({super.key, required this.iconPath});

  @override
  Widget build(BuildContext context) {
    return Tab(
      height: 80,
      child: Container(
        decoration: BoxDecoration (color: Colors.grey[200],borderRadius: BorderRadius.circular(16) ),
        padding: const EdgeInsets.all(8),
      
        child: Image.asset(iconPath, color: Colors.grey[800],),
      ),
    );
  }
}