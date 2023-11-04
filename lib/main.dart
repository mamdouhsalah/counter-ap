import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class CounterPage extends StatefulWidget {
  const CounterPage({Key? key}) : super(key: key);

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int count = 0;

  void increment() {
    setState(() {
      count++;
    });
  }

  void reset() {
    setState(() {
      count = 0;
    });
  }

  void decrement() {
    setState(() {
      count--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: reset,
        child: const Icon(Icons.restore),
      ),
      appBar: AppBar(
        title: const Center(
          child: Text('simple counter app'),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'simple counter app',
              style: TextStyle(fontSize: 22),
            ),
            const Text(
              '                    ',
              style: TextStyle(fontSize: 25),
            ),
             Container(
              width: 80,
              height: 80,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.blue,
              ),
              child: Center(
                child: Text(
                  '$count',
                  style: const TextStyle(fontSize: 48),
                ),
              ),
            ),
            Row( 
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  onPressed: increment,
                  child: const Icon(Icons.add), 
                ),
                const SizedBox(width: 16), 
                FloatingActionButton(
                  onPressed: decrement,
                  child: const Icon(Icons.remove),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Counter App',
      home: CounterPage(),
    );
  }
}


