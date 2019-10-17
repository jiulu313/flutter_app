import 'package:flutter/material.dart';
import 'package:flutter_app/login/login_page.dart';
import 'package:flutter_app/router_page.dart';
import 'package:flutter_color_plugin/flutter_color_plugin.dart';

void main() => runApp(MyApp2());


class MyApp2 extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          leading: Center(
              child:Text('返回',textAlign:TextAlign.justify,style:TextStyle(
                  fontSize: 20
              ))),
          title: Text('appBar'),
          centerTitle: true,
            actions:[
              Center(
                  child:Text('ddd',style: TextStyle(
                fontSize: 20,
              ))),
            ]
        ),
        body: Column(
          children: <Widget>[
            Container(
              color: Colors.deepOrange,
            )
          ],
        ),
      ),
    );
  }

}



class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation',
      home: FirstScreen(),
    );
  }
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Screen'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Launch second screen'),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SecondScreen(),
                ));
          },
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Screen'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Go Back'),
        ),
      ),
    );
  }
}
