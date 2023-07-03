import 'package:e_ui/const/color.dart';
import 'package:e_ui/screens/Item/ItemsWidget.dart';
import 'package:e_ui/screens/Home/HomeAppBar.dart';
import 'package:e_ui/widgets/CategoriesWidget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}


class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: ListView(
        children: [
          HomeAppBar(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 06),
            child: Container(
              // temporary height
              // height: 700,
              padding: EdgeInsets.only(top: 30),
              decoration: BoxDecoration(
                color: clr.secndry,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25),
                ),
              ),
              child: Column(
                children: [
                  // Search Widget
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 15),
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Row(
                      children: [
                        Container(
                          height: 30,
                          width: 300,
                          child: TextFormField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Search Here..',
                              prefixIcon: Icon(
                                Icons.search,
                                color: clr.primary,
                                size: 26,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  // Categories
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                    child: Text(
                      "Categories",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: clr.primary,
                      ),
                    ),
                  ),

                  // Categories
                  CategoriesWidget(),

                  //Items
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                    child: Text(
                      "Best Selling",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                        color: clr.primary,
                      ),
                    ),
                  ),

                  // Items Widget
                  ItemsWidget(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
