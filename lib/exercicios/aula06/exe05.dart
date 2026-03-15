import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: MyHomePage());
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double _brilho = 0.5;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Olá Flutter')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // O Container que altera a opacidade
              Opacity(
                opacity: _brilho,
                child: Container(
                  width: 150,
                  height: 150,
                  color: Colors.deepPurple,
                ),
              ),
              const SizedBox(height: 50),

              Text(
                "Brilho: ${(_brilho * 100).toInt()}%",
                style: const TextStyle(fontSize: 20),
              ),

              Slider(
                value: _brilho,
                min: 0.0,
                max: 1.0,
                onChanged: (double value) {
                  setState(() {
                    _brilho = value;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
