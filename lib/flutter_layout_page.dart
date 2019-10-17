import 'package:flutter/material.dart';

class FlutterLayoutPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FlutterLayoutPage2();
  }
}

class _FlutterLayoutPage2 extends State<FlutterLayoutPage>{


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'StatefulWidget基础组件',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
        ),
        body: Container(
          color: Colors.grey,
          child: Column(
            children: <Widget>[
              Wrap(
                children: <Widget>[
                  Text('你好，你好'),
                  Text('你好，你好'),
                  Text('你好，你好'),
                  Text('你好，你好'),
                  Text('你22'),
                ],
              )
            ],
          ),
        ),
      ),

    );
  }

}



class _FlutterLayoutPage extends State<FlutterLayoutPage> {
  int _currentIndex;
  String imgUrl;

  _FlutterLayoutPage() {
    _currentIndex = 0;
    imgUrl = 'http://cdn.duitang.com/uploads/item/201501/08/20150108164231_t432j.thumb.700_0.png';
  }

  @override
  Widget build(BuildContext context) {
    print('_current= $_currentIndex');

    TextStyle textStyle = TextStyle(
        color: Colors.red, fontSize: 26, backgroundColor: Colors.amber);

    return MaterialApp(
        title: 'StatefulWidget与基础组件',
        theme: ThemeData(primarySwatch: Colors.blue),
        home: Scaffold(
            appBar: AppBar(
              title: Text('StatelessWidget与基础组件'),
            ),
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: _currentIndex,
              onTap: (index) {
                setState(() {
                  _currentIndex = index;
                });
              },
              items: [
                BottomNavigationBarItem(
                    icon: Icon(Icons.home, color: Colors.grey),
                    activeIcon: Icon(Icons.home, color: Colors.blue),
                    title: Text('首页')),
                BottomNavigationBarItem(
                    icon: Icon(Icons.list, color: Colors.grey),
                    activeIcon: Icon(Icons.list, color: Colors.blue),
                    title: Text('列表')),
              ],
            ),
            body: _currentIndex == 0
                ? Container(
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 255, 255, 255)),
                    alignment: Alignment.center,
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            ClipOval(
                              child: SizedBox(
                                width: 100,
                                height: 100,
                                child: Image.network(
                                    'http://cdn.duitang.com/uploads/item/201501/08/20150108164231_t432j.thumb.700_0.png'),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 10),
                            ),
                            ClipRRect(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              child: Opacity(
                                opacity: 0.6,
                                child: Image.network(
                                    'http://cdn.duitang.com/uploads/item/201501/08/20150108164231_t432j.thumb.700_0.png',
                                    width: 100,
                                    height: 100),
                              ),
                            )
                          ],
                        ),
                        Container(
                          height: 100,
                          margin: EdgeInsets.only(top: 10),
                          decoration: BoxDecoration(color: Colors.brown),
                          child: PageView(
                            children: <Widget>[
                              Container(
                                color: Colors.red,
                                child: Center(
                                  child: Text('第一个实例'),
                                ),
                              ),
                              Container(
                                color: Colors.green,
                                child: Center(
                                  child: Text('第二个实例'),
                                ),
                              ),
                              Container(
                                color: Colors.blue,
                                child: Center(
                                  child: Text('第三个实例'),
                                ),
                              )
                            ],
                          ),
                        ),
                        Text('I am Text', style: textStyle),
                        Icon(
                          Icons.android,
                          color: Color.fromARGB(0, 255, 0, 255),
                          size: 50,
                        ),
                        Column(
                          children: <Widget>[
                            Container(
                              decoration: BoxDecoration(color: Colors.blue),
                              child: Text('宽度撑不满'),
                            ),

                            //宽度撑满
                            FractionallySizedBox(
                              widthFactor: 1,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                ),
                                child: Text('宽度撑满'),
                              ),
                            ),

                            Stack(
                              children: <Widget>[
                                Image.network(imgUrl, width: 100, height: 100),
                                Positioned(
                                  left: 0,
                                  bottom: 0,
                                  child: Image.network(
                                    imgUrl,
                                    width: 40,
                                    height: 40,
                                  ),
                                )
                              ],
                            ),

                            Wrap(
                              children: <Widget>[
                                Image.network(imgUrl, width: 100, height: 100),
                                Image.network(imgUrl, width: 100, height: 100),
                                Image.network(imgUrl, width: 100, height: 100),
                                Image.network(imgUrl, width: 100, height: 100),
                                Image.network(imgUrl, width: 100, height: 100),
                                Image.network(imgUrl, width: 100, height: 100),

                              ],
                            ),


                          ],
                        )
                      ],
                    ),
                  )
                : Text('列表')));
  }
}
