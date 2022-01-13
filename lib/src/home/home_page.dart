import 'package:flutter/material.dart';

import 'controller/conter.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final counter = Counter();

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
            const Text(
              'You have pushed the button this many times:',
            ),
            AnimatedBuilder(
              animation: counter,
              builder: (context, child) {
                return Text(
                  '${counter.value}',
                  style: Theme.of(context).textTheme.headline4,
                );
              },
            ),
            const SizedBox(
              height: 18.0,
            ),
            ElevatedButton.icon(
              onPressed: counter.increment,
              icon: const Icon(Icons.add),
              label: const Text("Increment"),
            ),
            const SizedBox(
              height: 18.0,
            ),
            ElevatedButton.icon(
              onPressed: counter.decrement,
              icon: const Icon(Icons.remove),
              label: const Text("Decrement"),
            ),
          ],
        ),
      ),
    );
  }
}
