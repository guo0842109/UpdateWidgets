
import 'package:flutter/material.dart';

void main() => runApp(new MyApp());


/*
* 这里相当于Android中的Application类
* StatelessWidget表示无状态控件*/


class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    /*
    * MaterialApp表明app的风格是Material Design风格的
    * 这里我们可以配置app的主题相关属性比如颜色，按钮风格等等，类似于Android中的style文件
    * */
    return MaterialApp(
      title: 'Flutter Demo',

      /*主题相关配置
      * 这里我们可以配合app整体的主题样式，比如整体颜色，控件默认的样式等
      * */
      theme: ThemeData(
        /*这个地方就类似于Android中的style文件配置，主要就是主题的配置*/
        primaryColor: Colors.red,
        primaryColorDark: Colors.red,
        accentColor: Colors.orange,
        buttonTheme: ButtonThemeData(buttonColor: Colors.red,textTheme: ButtonTextTheme.primary)
      ),

      /*home指定了启动后显示的页面
      * 类似于我们在AndroidManifest中配置启动页面
      * */
      home: MyHomePage(title: 'Flutter示例'),
    );
  }
}

/*
* StatefulWidget是一个有状态的控件，如果你的页面需要更新ui，那么该页面就要继承自StatefulWidget
* 如果只是一个纯展示的页面，只需要继承自StatelessWidget即可
* MyHomePage在上面已经被指定为启动页面
* 该页面有一个计数的逻辑，会更新ui，所以需要继承自StatefulWidget
* */
class MyHomePage extends StatefulWidget {
  /*Dart 中的构造方法  {}里面的参数表示可选参数，跟kotlin概念差不多
  * this.title默认会把值赋给下面的title
  * */
  MyHomePage({Key key, this.title}) : super(key: key);

  /*声明一个变量 用final修饰表示只能赋一次值
  * 在上面的构造上方法中已经有赋值操作了，所以后面我们就不能再更改title的值了
  * */
  final String title;

  /*所有继承自StatefulWidget的控件都要重写createState()这个方法
  * 可以理解为指定该页面的状态是由谁来控制的
  * 在Dart中下划线开头声明的变量和方法，其默认访问权限就是私有的
  * 类似于java中用private关键字修饰,只能在类的内部访问
  * */
  @override
  _MyHomePageState createState() => _MyHomePageState();
}



/*
*State是一个状态对象，<>里面是表示该状态是跟谁绑定的。
* 我们修改状态时就是在该类中进行编写
*
* */
class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  /*计数器加一*/
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  /*这里我们自己新建一个方法，很简单，就是执行减一操作*/
  void _reduceCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
/*Scaffold可以看作是Material Design中的一个模板
*看源码发现它继承自StatefulWidget，包含了appBar,body,drawer等控件
* */
    return Scaffold(
      /*appBar 相当于Android中的ToolBar*/
      appBar: AppBar(
        /*这里的widget实际上就是MyHomePage*/
        title: Text(widget.title),
      ),
      /*中间的内容布局*/
      body: Center(
        /*Column表示一行 对应的Row表示一列
        * 这里我们改成列看一下
        * */
        child: Column(
          /*mainAxisAlignment翻译成中文就是主轴对准的意思。
          * 我们可以把值设置为star,end等等
          * */
          mainAxisAlignment: MainAxisAlignment.center,
          /*子控件，是一个List类型*/
          children: <Widget>[

            /*文本控件*/
            Text(
              '你点击的次数:',
              /*这里我们可以修改样式*/
              style: TextStyle(fontSize: 30,letterSpacing: 3),
            ),
            /*$_counter 用法跟kotlin中的${_counter}类似，*/
            Text(
              '$_counter',
              /*Text的样式*/
              style: Theme.of(context).textTheme.display3,

            ),
            /*我们新增一个按钮，用来实现点击使计数器减一*/
            RaisedButton(
              /*_reduceCounter是上面我们自己新增的方法，Dart中可以把方法作为参数传递*/
              onPressed: _reduceCounter,
              child: Text("减一"),
            )
          ],
        ),
      ),

      /*浮动按钮*/
      floatingActionButton: FloatingActionButton(
        /*_incrementCounter实际上就是一个上面默认的_incrementCounter()方法，*/
        onPressed: _incrementCounter,
        tooltip: '计数器加一',
        child: Icon(Icons.add),
      ),

      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

