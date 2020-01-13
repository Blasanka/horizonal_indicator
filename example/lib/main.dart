import 'package:flutter/material.dart';
import 'package:horizontal_indicator/horizontal_indicator.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        bottom: PreferredSize(
          preferredSize: Size(double.infinity, 68),
          child: DateIndicator(
            holderColor: Colors.grey.withOpacity(.5),
            numberColor: Colors.red,
            textColor: Colors.white,
            activeBubbleColor: Colors.greenAccent,
            unSelectedBorderColor: Colors.blueAccent,
            selectedBorderColor: Colors.red,
            indicatorColor: Colors.redAccent.withOpacity(.4),
            indicatorShadowColor: Colors.redAccent.withOpacity(.3),
            onHolderTap: (int index) {
              debugPrint(index.toString());
              setState(() => _counter = index);
            },
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}