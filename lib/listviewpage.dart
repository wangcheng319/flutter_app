import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ListViewPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ListViewPage();
  }
}

//listview 以及scrollbar
class _ListViewPage extends State<ListViewPage> {
  //列表数据
  final List<String> items = new List<String>.generate(100, (i) => "Item $i");

  //tab当前选中项目
  int _tabIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListViewPage"),
      ),
      body: new Scrollbar(
          child: new ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return new ListTile(
            title: new Text('${items[index]}'),
            leading: new Icon(Icons.linked_camera),
            onTap: _itemClick,
          );
        },
      )),
      bottomNavigationBar: new BottomNavigationBar(
        items: [
          new BottomNavigationBarItem(
              icon: new Icon(Icons.linked_camera), title: new Text("Main")),
          new BottomNavigationBarItem(
              icon: new Icon(Icons.airport_shuttle), title: new Text("Second")),
          new BottomNavigationBarItem(
              icon: new Icon(Icons.card_membership), title: new Text("Three")),
          new BottomNavigationBarItem(
              icon: new Icon(Icons.directions_bike), title: new Text("Four")),
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: _tabIndex,
        onTap: _onTap,
      ),
    );
  }

  //切换底部tab
  void _onTap(int value) {
    setState(() {
      _tabIndex = value;
    });
  }

  //点击列表
  void _itemClick() {
    debugPrint("haha");
    Fluttertoast.showToast(
        msg: "This is Center Short Toast",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIos: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white
    );
  }
}
