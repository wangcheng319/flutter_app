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
          mainAxisSize: MainAxisSize.min,
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
                    icon: Icon(Icons.account_box),
                    hintText: "请输入用户名",
                    border: InputBorder.none,
                    contentPadding: const EdgeInsets.only(
                        left: -10, top: 5, bottom: 5, right: 10)),
              ),
            ),
            new Container(
              padding: const EdgeInsets.all(16),
              child: TextField(
                decoration: new InputDecoration(
                    hintText: "请输入密码aa",
                    border: new OutlineInputBorder(
                        borderSide: new BorderSide(
                            color: Colors.red,
                            width: 10,
                            style: BorderStyle.solid),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(4.0))),
                    contentPadding: const EdgeInsets.all(10)),
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
            Row(
              children: <Widget>[
                Expanded(
                    flex: 1,
                    child: new Container(
                      height: 30,
                      color: Colors.red,
                    )),
                Expanded(
                    flex: 2,
                    child: new Container(
                      height: 30,
                      color: Colors.blue,
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }

  void _login() {
    debugPrint("wangc:" + _controller.text);
  }
}
