import 'package:flutter/material.dart';
import 'package:flutter_color_plugin/flutter_color_plugin.dart';

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LoginPage();
  }
}

class _LoginPage extends State<LoginPage> {
  String _imgUrl;

  _LoginPage() {
    _imgUrl =
    'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1571292580493&di=8fe3f46ee4d21e2b5b998c603c64a0ad&imgtype=0&src=http%3A%2F%2Fpic.90sjimg.com%2Fdesign%2F00%2F07%2F85%2F23%2F59316515c9450.png';
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '登录界面',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        body: Container(
            color: ColorUtil.color("#fcfcff"),
            child: Column(
                children: <Widget>[
            Padding(padding:EdgeInsets.only(top: 70)),
        Center(child: Image.network(_imgUrl, width: 100, height: 100)),
        Center(child: Text('美鲜送', style: TextStyle(fontSize: 20))),
        Padding(padding: EdgeInsets.only(top: 30),),
        Center(
            child: Row(
                children:[
                _makeAccountWidget(),
            ]
        ),
      )
      ],
    ),)
    ,
    )
    ,
    );
  }

  Widget _makeEditText(){
    return Column(
      children: <Widget>[

      ],
    );
  }

  Widget _makeAccountWidget() {
    return Expanded(
      child: Row(
        children: <Widget>[
          _makeButtonIndicationWidget('账号登录'),
          Padding(padding:EdgeInsets.only(top: 10)),
          _makeButtonIndicationWidget('快捷登录'),
        ],
      ),
    );

  }

  Widget _makeButtonIndicationWidget(String title){
    return Expanded(
      child: Column(
        children: <Widget>[
          Text(title),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 12,vertical: 4),
            height: 4,
            color: Colors.blue,
          )
        ],
      ),
    );
  }

}
