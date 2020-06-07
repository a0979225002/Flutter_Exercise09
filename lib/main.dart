import 'package:flutter/material.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.green,
        appBar: AppBar(
          title: Text("Wrap佈局&Button"),
        ),
        body:LayoutDemo() ,
      ),
    );
  }
}
class LayoutDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Container(
      height: 600,
      width:  500,
      color:  Colors.blue,
      padding: EdgeInsets.all(20),
       child: Wrap(//自動換行
      alignment: WrapAlignment.center,
          spacing: 10, //橫軸 個別給予間距
          runSpacing: 10,//橫軸 個別給予間距
          runAlignment: WrapAlignment.end,
//          direction: Axis.vertical,//縱軸顯示
          children: <Widget>[
            MyButton("測試"),
            MyButton("測試"),
            MyButton("測試"),
            MyButton("測試"),
            MyButton("測試"),
            MyButton("測試"),
            MyButton("測試"),
            MyButton("測試"),
            MyButton("測試"),

          ],
        ),
    );
  }
}
class MyButton extends StatelessWidget{
  final String text;

  const MyButton( this.text,{Key key,}) : super(key: key);//使用常量 宣告建構參數

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RaisedButton(
      child: Text(text),
      textColor:Theme.of(context).accentColor,//將按鈕更改為主題的顏色
      onPressed: (){//點擊按鈕事件

      },
    );
  }
  
}