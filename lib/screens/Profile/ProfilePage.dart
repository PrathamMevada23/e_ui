import 'package:e_ui/const/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../widgets/TileList.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(left: 10, top: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              leading: CircleAvatar(
                radius: 35,
                backgroundImage: AssetImage('assets/images/img_9.jpg'),
              ),
              title: Text(
                "Micheal",
                style: TextStyle(
                    fontSize: 24,
                    color: clr.primary,
                    fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                "User Profile",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
            Divider(height: 25, thickness: 1, color: Colors.grey),
            TileList(
              color: Colors.orange.shade100,
              icon: CupertinoIcons.person_alt,
              iconColor: Colors.orange,
              name: 'Profile',
              onTap: () {},
            ),
            TileList(
              color: Colors.blue.shade100,
              icon: CupertinoIcons.cube_box_fill,
              iconColor: Colors.blue,
              name: 'Your Orders',
              onTap: () {},
            ),
            TileList(
              color: Colors.pink.shade100,
              icon: CupertinoIcons.gift,
              iconColor: Colors.pink,
              name: 'Coupons & Rewards',
              onTap: () {},
            ),
            TileList(
              color: Colors.green.shade100,
              icon: CupertinoIcons.bell,
              iconColor: Colors.green,
              name: 'Notifications',
              onTap: () {},
            ),
            TileList(
              color: Colors.red.shade100,
              icon: CupertinoIcons.question_diamond,
              iconColor: Colors.red,
              name: 'Help Center',
              onTap: () {},
            ),
            TileList(
              color: Colors.blueGrey.shade100,
              icon: CupertinoIcons.star_lefthalf_fill,
              iconColor: Colors.blueGrey,
              name: 'Rate us',
              onTap: () {},
            ),
            Divider(
              height: 40,
              thickness: 1,
            ),
            TileList(
              color: Colors.cyan.shade100,
              icon: Icons.logout_outlined,
              iconColor: Colors.cyan,
              name: 'Log Out',
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
