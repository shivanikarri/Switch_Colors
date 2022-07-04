import 'package:color_switch/custom_controls/colorcontrol.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var colorBlocks = <Widget>[];

  @override
  void initState() {
    super.initState();

    setState(() {
      colorBlocks.add(ColorControl());
      colorBlocks.add(ColorControl());
      colorBlocks.add(ColorControl());
      colorBlocks.add(ColorControl());
      colorBlocks.add(ColorControl());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('color switch'),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: colorBlocks,
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: switchChildren,
        tooltip: 'Switch',
        child: const Icon(Icons.filter),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  void switchChildren() {
    setState(() {
      colorBlocks.shuffle();
    });
  }
}
