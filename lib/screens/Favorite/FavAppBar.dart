import 'package:flutter/material.dart';
import 'package:e_ui/const/color.dart';

class FavAppBar extends StatelessWidget {
  const FavAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 32),
      child: Row(
        children: [
          Icon(
            Icons.favorite,
            size: 30,
            color: clr.primary,
          ),
          Padding(
            padding: EdgeInsets.only(left: 25),
            child: Text(
              "Favorites",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: clr.primary,
              ),
            ),
          ),
          Spacer(),
          Icon(
            Icons.more_vert,
            size: 30,
            color: clr.primary,
          ),
        ],
      ),
    );
  }
}
