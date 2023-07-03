import 'package:e_ui/const/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class Favtile extends StatelessWidget {
  Function(BuildContext)? removeButton;

  Favtile({
    super.key,
    required this.removeButton,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Slidable(
        endActionPane: ActionPane(
          motion: ScrollMotion(),
          children: [
            SlidableAction(
              onPressed: (BuildContext context) {},
              icon: Icons.delete,
              backgroundColor: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
          ],
        ),
        child: Container(
          padding: EdgeInsets.all(10),
          child: Row(
            children: [
              Image.asset(
                "assets/images/1.png",
                height: 5,
                width: 5,
              ),
              Text(
                "Air Jordan 1 FLY",
                style: TextStyle(
                  fontSize: 18,
                  color: clr.primary,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 05,
                child: Text(
                  "₹ 34,500",
                  style: TextStyle(
                    color: clr.primary,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
