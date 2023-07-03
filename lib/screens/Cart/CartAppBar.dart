import 'package:e_ui/const/color.dart';
import 'package:flutter/material.dart';

class CartAppBar extends StatelessWidget {
  CartAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(20),
      child: Row(
        children: [
          Icon(
            Icons.shopping_bag_rounded,
            size: 30,
            color: clr.primary,
          ),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              "Cart",
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
