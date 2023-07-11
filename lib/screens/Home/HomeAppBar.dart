import 'package:e_ui/const/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      child: Row(
        children: [
          Icon(
            CupertinoIcons.house_fill,
            size: 26,
            color: clr.primary,
          ),
          SizedBox(width: 100),
          Text(
            "Sneak UI",
            style: TextStyle(
              color: clr.primary,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
