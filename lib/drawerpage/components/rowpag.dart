import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class RowPage extends StatelessWidget {
  List img=['https://www.freeiconspng.com/thumbs/cat-icon/cat-icon-25.png',
  'https://icons.veryicon.com/png/o/animal/pet-icon/dog-24.png',
  'https://icon-library.com/images/parrot-icon/parrot-icon-14.jpg',
  'https://icons-for-free.com/iconfiles/png/512/bunny+carrot+easter+food+pet+rabbit+icon-1320165977214081920.png'];
  List val=['cat','dog','parrot','bunny'];
  @override
  Widget build(BuildContext context) {
    return Container(height: 130,margin: EdgeInsets.only(top: 20),
      child: ListView.builder(scrollDirection: Axis.horizontal,
        itemBuilder: (context,index)=>
          Container(width: 100,
            child: Column(
              children: [
                Container(margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.white,
                  boxShadow: [BoxShadow(color: Colors.black12,offset:Offset(5,5),blurRadius: 5)]),
                  child: Image.network(img[index]),
                ),
                Text(val[index])
              ],
            ),
            ),
        itemCount: img.length,
          ),
    );
  }
}
