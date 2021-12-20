import 'package:animalapp/listpage/component/searchingpage.dart';
import 'package:animalapp/providerpage/providerpage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ListingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var pro = context.watch<ProviderOne>();
    print('ok');
    return AnimatedContainer(
        color: Colors.white,
        transform: Matrix4.translationValues(pro.xOffset, pro.yOffset, 0)
          ..scale(pro.scaleFactor),
        duration: Duration(milliseconds: 250),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(20),
              child: Row(children: [
                pro.isDrawerOpen
                    ? IconButton(
                    onPressed: () {
                      pro.show();
                      print(pro.xOffset);
                    },
                    icon: Icon(Icons.arrow_back_ios))
                    : IconButton(
                    onPressed: () {
                      pro.display();
                    },
                    icon: Icon(Icons.menu)),
                SizedBox(
                  width: 100,
                ),
                Icon(Icons.location_on),
                Column(
                  children: [
                    Text(
                      'Location',
                      style: TextStyle(fontSize: 17, color: Colors.black38),
                    ),
                    Text(
                      'Kyiv, Ukraine',
                      style: TextStyle(
                          fontSize: 17,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Spacer(),
                Container(
                  height: 50,
                  width: 50,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.blueGrey),
                  child: Image.network(
                      'https://i.dlpng.com/static/png/6427863_preview.png'),
                )
              ]),
            ),
            SearchingPage()
          ],
        ));
  }
}
