import 'package:flutter/material.dart';

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
      theme: ThemeData(
        // This is the theme of your application.
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
  int _counter = 0;
  bool _Images = true;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _toggleImage() {
    setState(() {
      _Images = !_Images;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.network(
              _Images
                  ? 'https://t4.ftcdn.net/jpg/04/93/91/31/360_F_493913135_q0Ar7Aund7lRPFSxa8qg1hTQmhG5kdNP.jpg'
                  : 'https://t4.ftcdn.net/jpg/00/86/18/25/360_F_86182546_Gy93hyoCFXmK0JlXYnOekv05v66MUmfb.jpg',
              width: 400,
              height: 400,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _toggleImage, 
              child: const Text('Toggle Image'),
            ),
            const SizedBox(height: 20),
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
