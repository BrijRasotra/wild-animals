import 'package:animalapp/listpage/component/catsinfo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class SearchingPage extends StatelessWidget {
  List img=['https://img.icons8.com/carbon-copy/2x/cat.png',
  'https://img.icons8.com/pastel-glyph/2x/dog--v2.png',
  'https://static.thenounproject.com/png/1199315-200.png',
  'https://icon-library.com/images/bunny-icon/bunny-icon-28.jpg',
  'https://www.freeiconspng.com/uploads/horse-icon-16.png'];
  List name=['Cat','Dog','Parrot','Bunny','Horse'];
  @override
  Widget build(BuildContext context) {
    return Container(height: 590,width: double.infinity,
      decoration: BoxDecoration(borderRadius: BorderRadius.only(topLeft: Radius.circular(20),
        topRight: Radius.circular(30),),
      color: Color(0xFFe7e7e7)),
      child: Column(children: [
        Container(height: 50,width: 350,margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
              color: Colors.white30),
          child: Row(children: [
            Icon(Icons.search,color: Colors.black12,),
            SizedBox(width: 10,),
            Text('Search pet to addopt',style: TextStyle(color: Colors.black54),),
            Spacer(),
            Icon(Icons.menu,color: Colors.black12,)
          ],),
        ),
        Container(
          height: 150,
          child:ListView.builder(itemCount: img.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context,index)=>
              Column(children: [
                Container(height:70,margin: EdgeInsets.all(20),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white70,
                      boxShadow: [BoxShadow(offset: Offset(5,5),blurRadius: 5,color: Colors.black12)]),
                  child: Image.network(img[index]),
                ),
                Text(name[index],style: TextStyle(fontSize: 17),)
              ],)
        )),
        CatsInfo()
      ],),
    );
  }
}
