import 'dart:html';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Capital',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(title: 'Capital'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class CashPage extends StatefulWidget {
  const CashPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<CashPage> createState() => _CashPageState();
}

class CreditPage extends StatefulWidget {
  const CreditPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<CreditPage> createState() => _CreditPageState();
}

_toCashPage() {
  return const CashPage(title: 'Cash');
}

_toCreditPage() {
  return const CreditPage(title: 'Credit');
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final ButtonStyle style =
        ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));

    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Center(
          child: Column(children: <Widget>[
        SizedBox(
            height: 100,
            width: 200,
            child: ElevatedButton(
                style: style,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => _toCashPage()));
                },
                child: const Text('Cash'))),
        SizedBox(
            height: 100,
            width: 200,
            child: ElevatedButton(
                style: style,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => _toCreditPage()));
                },
                child: const Text('Credit')))
      ])),
    );
  }
}

class _CashPageState extends State<CashPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text(widget.title)));
  }
}

class _CreditPageState extends State<CreditPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text(widget.title)));
  }
}
