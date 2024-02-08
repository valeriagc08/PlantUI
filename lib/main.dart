import 'package:flutter/material.dart';
import 'pages/homePage.dart';
import 'pages/shopping.dart';
import 'pages/favorite.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
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
  int _actualPage=2;
  final List<Widget> _pages = [
    const Favorite(),
    const Shopping(),
    const HomePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_actualPage],   
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color.fromARGB(255, 58, 142, 90),
        onTap: (index){
          setState(() {
            _actualPage=index;
          }); 
        },
        selectedItemColor: Colors.white,
        currentIndex: _actualPage,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "Favorite"),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: "Shopping"),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),

      ],
    ),
    );
  }
}






