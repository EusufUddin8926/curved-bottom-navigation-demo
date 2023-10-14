import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'A.dart';
import 'B.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  var _page = 0;
  final pages = [A(), B(),B(), B(),B()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Curved Bottom Navbar Demo"),
        backgroundColor: Colors.pink,
      ),
      bottomNavigationBar: CurvedNavigationBar(
        index: 0,
        color: Colors.white,
        buttonBackgroundColor: Colors.white,
        backgroundColor: Colors.cyan,
        animationDuration: Duration(microseconds: 600),
        animationCurve: Curves.easeInOut,
        onTap: (value) {
         setState(() {
           _page = value;
         });
        },
        items: [
          Icon(Icons.access_alarm),
          Icon(Icons.ac_unit),
          Icon(Icons.accessible),
          Icon(Icons.accessible),
          Icon(Icons.accessible)
        ],
      ),
      body: pages[_page],
    );
  }
}
