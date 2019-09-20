import 'package:bus_app/loginscreen.dart';
import 'package:bus_app/routing_constant.dart';
import 'package:flutter/material.dart';
import 'router.dart' as router;

void main() => runApp(MyApp());

class MyApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }

}

class MyAppState extends State {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SL Duty Free Allowance',
      onGenerateRoute: router.generateRoute,
      initialRoute: LoginViewRoute,
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: MyHomePage(title: 'SL Duty Free Allowance'),
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
    return LoginScreen3();
  }
}
