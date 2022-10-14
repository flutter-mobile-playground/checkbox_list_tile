import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CheckBox List Tile',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 18, 32, 47),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool? _isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CheckBox List Tile'),
      ),
      body: Center(
        child: CheckboxListTile(
          title: const Text(
            'CheckBox',
          ),
          subtitle: const Text(
            'CheckBox subtitle',
          ),
          value: _isChecked,
          onChanged: (newValue) {
            setState(() {
              _isChecked = newValue;
            });
          },
          activeColor: Colors.orangeAccent,
          checkColor: Colors.white,
          tileColor: Colors.blueGrey,
          controlAffinity: ListTileControlAffinity.leading,
          tristate: true,
        ),
      ),
    );
  }
}
