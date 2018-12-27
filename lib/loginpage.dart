import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LoginPage();
  }
}

class _LoginPage extends State<LoginPage> {
  final TextEditingController _controller = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("登录"),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Container(
              margin: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: new BorderRadius.all(new Radius.circular(20.0)),
                  border: new Border.all(color: Colors.blue, width: 1)),
              padding:
                  const EdgeInsets.only(left: 8, top: 4, right: 8, bottom: 4),
              child: TextField(
                controller: _controller,
                decoration: new InputDecoration(
                  hintText: "请输入用户名",
                  border: InputBorder.none,
                ),
              ),
            ),
            new Container(
              padding: const EdgeInsets.all(16),
              child: TextField(
                decoration: new InputDecoration(hintText: "请输入密码"),
              ),
            ),
            new Container(
              padding: const EdgeInsets.only(top: 66),
              child: RaisedButton(
                onPressed: _login,
                child: Text("登录"),
                color: Colors.blue,
                textColor: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _login() {
    debugPrint("wangc:" + _controller.text);
  }
}
