import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CatsInfo extends StatelessWidget {
  List img=['https://www.seekpng.com/png/full/1-15054_cat-png-clip-art-cat-png.png',
  'https://www.nicepng.com/png/full/586-5863858_inky-black-kitten-minky-print-black-cat.png',
  'https://down.imgspng.com/download/0720/cat_PNG50447.png',
    'https://cdn.picpng.com/cats/pic-cats-22936.png'];
  List nam=['Sola','Orion','Polydactyl','Snowshoe'];
  List year=['1.5 Year old','2 Year old','2.5 Year old','2 Year old'];
  List dis=['Distance:3.6km','Distance:7.8km','Distance:2km','Distance:12km'];
  List colors=[Color(0xFFa2b5b5),Color(0xFFe9c594),Color(0xFFF8BBD0),Color(0xFFE1BEE7)];
  @override
  Widget build(BuildContext context) {
    return Container(height: 370,
      child: ListView.builder(itemCount:nam.length ,
          itemBuilder: (context,index)=>Stack(clipBehavior: Clip.none,
            children:[
              Container(
                 width: 370,margin: EdgeInsets.only(bottom: 70,left: 30),
                 padding: EdgeInsets.only(left: 130,top: 10,bottom: 10),
                 decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                   color: Colors.white,),
                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                   Row(
                       children:[
                         Text(nam[index],style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                         Spacer(),
                         Icon(Icons.arrow_back),]),
                  SizedBox(height: 10,),
                  Text('Abyssinian cat',style: TextStyle(fontSize: 17),),
                    SizedBox(height: 10),
                    Text(year[index]),
                    Row(children: [
                      Icon(Icons.location_on),
                      SizedBox(width: 20,),
                      Text(dis[index],style: TextStyle(fontSize: 15,color: Colors.black38),)
                    ],)
                ],),),
              Positioned(top: -30,
                child: Container(height: 170,width: 140,
                  margin: EdgeInsets.only(left: 10,top: 20,bottom: 10,right: 10),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                      color: colors[index]),),),
              Positioned(top: -30,bottom: 40,
                  child: Container(
                    child: Image.network(img[index],scale: 12,),
              ))
          ])),
    );
  }
}
