import 'package:e_ui/screens/Favorite/FavAppBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:e_ui/const/color.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class FavPage extends StatelessWidget {
  const FavPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          FavAppBar(),
          for (int i = 4; i < 9; i++)
            Slidable(
              endActionPane: ActionPane(
                motion: ScrollMotion(),
                children: [
                  SlidableAction(
                    onPressed: (context) {},
                    icon: Icons.delete,
                    backgroundColor: clr.secndry,
                    borderRadius: BorderRadius.circular(25),
                  ),
                ],
              ),
              child: Container(
                height: 110,
                margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: clr.secndry,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Icon(
                      CupertinoIcons.heart_fill,
                      color: Colors.redAccent,
                    ),
                    SizedBox(
                      width: 06.0,
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      margin: EdgeInsets.only(bottom: 5),
                      child: Image.asset("assets/images/$i.png"),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Air Jordan 1 FLY",
                            style: TextStyle(
                              color: clr.primary,
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "₹ 34,500",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: clr.primary,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Icon(
                      CupertinoIcons.bag_badge_plus,
                      color: clr.primary,
                      size: 26,
                    ),
                  ],
                ),
              ),
            )
        ],
      ),
    );
  }
}
