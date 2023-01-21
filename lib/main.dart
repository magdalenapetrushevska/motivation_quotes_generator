import 'package:flutter/material.dart';
import 'dart:math';

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
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.pink),
      ),
      home: const MyHomePage(title: 'Motivation quotes generator'),
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
  List<String> quotes = [
    "Every moment is a fresh beginning.",
    "All our dreams can come true if we have the courage to pursue them.",
    "No act of kindness, no matter how small, is ever wasted.",
    "The man who moves a mountain begins by carrying away small stones.",
    "For fast acting relief, try slowing down.",
    "Just when the caterpillar thought the world was ending, he turned into a butterfly.",
    "Don’t be pushed by your problems. Be led by your dreams.",
    "If you don’t like something change it; if you can’t change it, change the way you think about it.",
    "Difficult roads often lead to beautiful destinations. The best is yet to come.",
    "Each morning we are born again. What we do today is what matters most.",
    "Life is not a dress rehearsal. Everyday, you should have at least one exquisite moment.",
    "Just when the caterpillar thought the world was ending, he turned into a butterfly."
  ];
  Random random = Random();
  int randomNumber = 0;

  void _quotesGenerator() {
    setState(() {
      randomNumber = random.nextInt(quotes.length);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const  Color.fromARGB(255, 239, 107, 151),
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                quotes[randomNumber],
                style: const TextStyle(fontSize: 22),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            SizedBox(
              width: 100,
              height: 70,
              child: FloatingActionButton.extended(
                onPressed: _quotesGenerator,
                tooltip: 'Next',
                label: const Text("Next"),
              ),
            ),
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
