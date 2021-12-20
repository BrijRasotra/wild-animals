import 'package:animalapp/drawerpage/drawerpage.dart';
import 'package:animalapp/listpage/listpage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class SpacerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          DrawerPage(),
          ListingPage()
        ],
      ),
    );
  }
}
