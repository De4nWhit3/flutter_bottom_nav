import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple.shade200,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: IndexedStack(
        index: _currentIndex,
        children: const [
          ScreenOne(),
          ScreenTwo(),
          ScreenThree(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            _currentIndex = value;
          });
        },
        currentIndex: _currentIndex,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.star), label: 'One'),
          BottomNavigationBarItem(icon: Icon(Icons.heart_broken), label: 'Two'),
          BottomNavigationBarItem(icon: Icon(Icons.apple), label: 'Three'),
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class ScreenOne extends StatelessWidget {
  const ScreenOne({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.blueAccent,
        child: const Text('Screen 1'),
      ),
    );
  }
}

class ScreenTwo extends StatelessWidget {
  const ScreenTwo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.green,
        child: const Text('Screen 2'),
      ),
    );
  }
}

class ScreenThree extends StatelessWidget {
  const ScreenThree({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.red,
        child: const Text('Screen 3'),
      ),
    );
  }
}
