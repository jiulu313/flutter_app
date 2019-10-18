import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FlutterRoutePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FlutterRoutePage();
  }
}

class _FlutterRoutePage extends State<FlutterRoutePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('路由使用')),
      body: Container(
        color: Color.fromARGB(255, 255, 0, 255),
        child: Column(
          children: <Widget>[
            RaisedButton(child: Text('java'),onPressed: (){
              print('java pressed');
              Navigator.push(context, MaterialPageRoute(
                  builder: (context){
                    return PageJava();
                  }
              ));
            }),

            RaisedButton(child: Text('cpp'),onPressed: (){
              print('cpp pressed');

              Navigator.push(context, MaterialPageRoute(
                  builder: (context){
                    return Cpp();
                  }
              ));
            }),
          ],
        ),
      ),
    );
  }


}

class PageJava extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _PageJavaImpl();
  }
}

class _PageJavaImpl extends State<PageJava> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 66, 35, 32),
      child: Text('java'),
    );
  }
}

class Cpp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CppImpl();
  }
}

class _CppImpl extends State<Cpp> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 123, 33, 47),
      child: Text('C++'),
    );
  }
}
