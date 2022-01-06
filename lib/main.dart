import 'package:backbuttonpressed/secondScreen.dart';
import 'package:double_back_to_close_app/double_back_to_close_app.dart';
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
      title: 'Back Button Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Back button pressed'),
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
  int _counter = 0;
  int backCounter = 0;

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
    ),
    body: DoubleBackToCloseApp(
      snackBar: SnackBar(content: Text("Press back twice"),),
      child: Center(
      child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
      const Text(
      'You have pushed the button this many times:',
      ),
      Text(
      '$_counter',
      style: Theme.of(context).textTheme.headline4,
      ),
      ],
      ),
      ),
    ),
    floatingActionButton: FloatingActionButton(
    onPressed: (){
      Navigator.push(context, MaterialPageRoute(builder: (context){
        return SecondScreen();
      }));
    },
    tooltip: 'Increment',
    child: const Icon(Icons.add),
    ), // This trailing comma makes auto-formatting nicer for build methods.
    );

    }
}
