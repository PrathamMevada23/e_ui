import 'package:e_ui/const/color.dart';
import 'package:flutter/material.dart';

class TileList extends StatelessWidget {
  void Function() onTap;
  Color? color, iconColor;
  IconData? icon;
  String name;

  TileList({
    super.key,
    required this.onTap,
    required this.color,
    required this.iconColor,
    required this.icon,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: ListTile(
        onTap: onTap,
        leading: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: color,
            shape: BoxShape.circle,
          ),
          child: Icon(
            icon,
            color: iconColor,
            size: 25,
          ),
        ),
        title: Text(
          name,
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.w400, fontSize: 20),
        ),
      ),
    );
  }
}
