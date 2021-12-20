import 'package:flutter/cupertino.dart';
class ColumnPage extends StatelessWidget {
  List val=['https://cdn.picpng.com/cats/pic-cats-22936.png',
  'http://assets.stickpng.com/images/580b57fbd9996e24bc43bb8c.png'];
  List colors=[Color(0xFFa2b5b5),Color(0xFFe9c594)];
  @override
  Widget build(BuildContext context) {
    return Container(height: 240,
      child: ListView.builder(itemBuilder: (context,index)=>
          Container(width: 50,margin: EdgeInsets.only(left: 10,top: 10),
            decoration: BoxDecoration(borderRadius: BorderRadius.only(topLeft: Radius.circular(10),bottomLeft: Radius.circular(10)),
            color: colors[index]),
            child: Image.network(val[index]),
          ),
          itemCount: val.length,
      ),
    );
  }
}
