import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "flutter 入门程序",
      theme: new ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        appBar: new AppBar(
          title: new Text("Demo"),
        ),
        body:Container(

          child: IndexedStack(
            index: 0,
            children: <Widget>[
              Image.network(
                  "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1547639589928&di=6d46424b47eec79a7f80bace2999217d&imgtype=0&src=http%3A%2F%2Fp0.ssl.qhimg.com%2Ft01c3f5bf72e7d1ac67.png"),
              Text(
                "Stack",
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 20,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ],
            alignment: Alignment.bottomCenter,
          ),
        ) ,
      ),
    );
  }
}

class MyBox extends StatelessWidget {
  String index;
  double boxSize = 100;

  MyBox(String index) {
    this.index = index;
  }

  @override
  Widget build(BuildContext context) {
    return new Container(
      width: boxSize,
      height: boxSize,
//      color: Colors.cyan,
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(0),
      alignment: Alignment.center,
      child: Text(index),
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [Colors.orangeAccent, Colors.orange, Colors.deepOrange]),
      ),
//      decoration: BoxDecoration(
////    decoration中设置了颜色，Container的color属性就不能设置了，否则有冲突的
//          border: Border.all(color: Colors.red, width: 1),
//          boxShadow: [BoxShadow(color: Colors.redAccent, offset: Offset(2, 2))],
//          gradient: LinearGradient(
//            colors: [Colors.orangeAccent, Colors.redAccent, Colors.red],
//          ),
//          shape: BoxShape.circle
//          ),
//      //一般foregroundDecoration和decoration不会同时使用，其使用方式跟decoration一致
    );
  }
}
