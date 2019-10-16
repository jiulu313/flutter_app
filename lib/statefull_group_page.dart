import 'package:flutter/material.dart';

class StatefulGroupWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _StateGroupState(0);
  }
}

class _StateGroupState extends State<StatefulGroupWidget> {
  int _currentIndex;

  _StateGroupState(this._currentIndex);


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

              onTap: (index){
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
            body: _currentIndex == 0 ? Container(
              decoration:
                  BoxDecoration(color: Color.fromARGB(255, 255, 255, 255)),
              alignment: Alignment.center,
              child: Column(
                children: <Widget>[
                  Text('I am Text', style: textStyle),
                  Icon(
                    Icons.android,
                    color: Color.fromARGB(0, 255, 0, 255),
                    size: 50,
                  )
                ],
              ),
            ): Text('列表')
        ));
  }
}
