import 'package:animalapp/providerpage/providerpage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';
class DrawerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF3b6969),
      child: Column(
        children: [
        Row(children: [
          Container(clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.white),
            child: Image.network('https://i.dlpng.com/static/png/6427863_preview.png',scale: 15,),),
          Column(
              children:[
                Text('Miroslava Savitskaya',style: TextStyle(color: Colors.white,fontSize: 17),),
                Text('Active status',style: TextStyle(color: Colors.white38,fontSize: 15),)
              ]),
        ],),
        Container(padding: EdgeInsets.only(top: 120,left: 30),
          child: Column(children: [
            Container(child:
            Row(children: [
              Icon(Icons.pets,color: Colors.white38,),
              SizedBox(width: 20,),
              Text('Adoption',style: TextStyle(color: Colors.white38,
                  fontSize: 15,fontWeight: FontWeight.bold),),]),),
            SizedBox(height: 30,),
            Container(child:
            Row(children: [
              Icon(Icons.home,color: Colors.white38,),
              SizedBox(width: 20,),
              Text('Donation',style: TextStyle(color: Colors.white38,
                  fontSize: 15,fontWeight: FontWeight.bold),),]),),
            SizedBox(height: 30,),
            Container(child:
            Row(children: [
              Icon(Icons.add_outlined,color: Colors.white38,),
              SizedBox(width: 20,),
              Text('Add pet',style: TextStyle(color: Colors.white38,
                  fontSize: 15,fontWeight: FontWeight.bold),),]),),
            SizedBox(height: 30,),
            Container(child:
            Row(children: [
              Icon(Icons.favorite,color: Colors.white38,),
              SizedBox(width: 20,),
              Text('Favourites',style: TextStyle(color: Colors.white38,
                  fontSize: 15,fontWeight: FontWeight.bold),),]),),
            SizedBox(height: 30,),
            Container(child:
            Row(children: [
              Icon(Icons.mail,color: Colors.white38,),
              SizedBox(width: 20,),
              Text('Meassages',style: TextStyle(color: Colors.white38,
                  fontSize: 15,fontWeight: FontWeight.bold),),]),),
            SizedBox(height: 30,),
            Container(child:
            Row(children: [
              Icon(Icons.person,color: Colors.white38,),
              SizedBox(width: 20,),
              Text('Profile',style: TextStyle(color: Colors.white38,
                  fontSize: 15,fontWeight: FontWeight.bold),),]),),
          ],),
        ),
        Spacer(),
        Container(
          child: Row(children: [
            Icon(Icons.settings,color: Colors.white30,),
            SizedBox(width: 10,),
            Text('Settings',style: TextStyle(fontSize: 22,color: Colors.white30),),
            Container(height: 20,width: 2,color: Colors.white38,margin: EdgeInsets.all(10),),
            Text('Log Out',style: TextStyle(fontSize: 22,color: Colors.white38),),
          ],),
        ),
      ],),
    );
  }
}
