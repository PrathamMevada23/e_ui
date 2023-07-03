import 'package:e_ui/screens/Cart/CartPage.dart';
import 'package:e_ui/screens/Item/ItemPage.dart';
import 'package:flutter/material.dart';
import 'package:e_ui/const/color.dart';
import 'package:e_ui/widgets/BottomNavBar.dart';

import 'screens/Home/HomePage.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: bottomNavWidget(),
    routes: {
      '/BottomNavBar': (context) => bottomNavWidget(),
    },
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) => const Scaffold();
}
