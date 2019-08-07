import 'package:flutter/material.dart';

import './firstTab.dart';
import './secondTab.dart';
import './thirdTab.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: MyHomePage(title: 'Flutter Demo Home Page'),
      // home: RowAndColumn(),
      home: TabsNav(),
    );
  }
}

class TabsNav extends StatefulWidget {
  @override
  _TabsNavState createState() => _TabsNavState();
}

class _TabsNavState extends State<TabsNav> with SingleTickerProviderStateMixin {

  TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Apps"),
        backgroundColor: Colors.red,
        bottom: TabBar(
          tabs: <Widget>[
            Tab(
              icon: Icon(Icons.access_alarm),
              child: FirstTab(),
            ),
            Tab(
              icon: Icon(Icons.ac_unit),
              child: SecondTab(),
            ),
            Tab(
              icon: Icon(Icons.accessibility),
              child: ThirdTab(),
            ),
          ],
          controller: tabController,
        ),
      ),
    );
  }
}

class RowAndColumn extends StatefulWidget {
  @override
  _RowAndColumnState createState() => _RowAndColumnState();
}

class _RowAndColumnState extends State<RowAndColumn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Rows and Columns"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Some Random Element",
                  style: TextStyle(fontSize: 20.0),
                ),
                Icon(
                  Icons.account_circle,
                  size: 35.0,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Some Random Element",
                  style: TextStyle(fontSize: 20.0),
                ),
                Icon(
                  Icons.account_circle,
                  size: 35.0,
                ),
                Icon(
                  Icons.account_box,
                  size: 35.0,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: MaterialButton(
                    onPressed: () {},
                    elevation: 8.0,
                    color: Colors.red,
                    textColor: Colors.white,
                    child: Text("This is a Button"),
                  ),
                ),
                Expanded(
                  child: MaterialButton(
                    onPressed: () {},
                    elevation: 8.0,
                    color: Colors.red,
                    textColor: Colors.white,
                    child: Text("This is a Button"),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   title: Center(
        //     child: Text(widget.title),
        //   ),
        // ),
        body: Center(
      child: Container(
        color: Colors.blue,
        child: Text(
          "Container Demo",
          style: TextStyle(
            fontSize: 20.0,
          ),
        ),
        // alignment: Alignment(0.5, -0.5),
        alignment: FractionalOffset(0.5, 1),
        constraints: BoxConstraints(
          maxHeight: 250.0,
          maxWidth: 250.0,
          minHeight: 100.0,
          minWidth: 100.0,
        ),
      ),
    ));
  }
}
