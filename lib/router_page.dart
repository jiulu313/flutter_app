
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FlutterRoutePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _FlutterRoutePage();
  }

}

class _FlutterRoutePage extends State<FlutterRoutePage>{
  @override
  Widget build(BuildContext context) {
    return Container(
      color:Color.fromARGB(255, 255, 0, 255),
      child: Column(
        children: <Widget>[
          _item('Java',_PageJava(),'Java'),
          _item('Cpp',_Cpp(),'Cpp')
        ],
      ),
    );
  }

  _item(String title, Widget pageJava, String routeName) {
    return Container(
      child: RaisedButton(
        onPressed: (){

        },
        child: Text(title),
      ),

    );
  }

}


class _PageJava extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _PageJavaImpl();
  }

}

class _PageJavaImpl extends State<StatefulWidget>{
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 66, 35, 32),
      child: Text('java'),
    );
  }
}

class _Cpp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _CppImpl();
  }

}

class _CppImpl extends State<_Cpp>{
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 123, 33, 47),
      child: Text('C++'),
    );
  }
}