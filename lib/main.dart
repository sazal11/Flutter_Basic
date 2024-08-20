import 'package:flutter/material.dart';

void main() {
  runApp(const TextWidgetEg2());
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Flutter Container'),
      ),
      body: Center(
        child: Container(
          width: 200,
          height: 100,
          color: Colors.blueGrey,
          child: Center(
            child: Text(
              'This is center of Container',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}

class MyApp1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Container Example'),
        ),
        body: Center(
          child: Container(
            width: 200,
            height: 100,
            padding: EdgeInsets.all(16.0),
            margin: EdgeInsets.all(16.0),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(8.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 10.0,
                  spreadRadius: 2.0,
                ),
              ],
            ),
            child: Text(
              'Hello, Flutter!',
              style: TextStyle(color: Colors.white, fontSize: 18.0),
            ),
          ),
        ),
      ),
    );
  }
}

class CenterWidgetEg1 extends StatelessWidget {
  const CenterWidgetEg1({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Center Widget Example'),
        ),
        body: Center(
          child: Text(
            'Hello, Flutter!',
            style: TextStyle(fontSize: 24, color: Colors.blue),
          ),
        ),
      ),
    );
  }
}

class CenterMultipleWidgetEg1 extends StatelessWidget {
  const CenterMultipleWidgetEg1({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Center Widget Example'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.star, size: 50, color: Colors.yellow),
              SizedBox(height: 20),
              Text(
                'Centered Text',
                style: TextStyle(fontSize: 24, color: Colors.blue),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TextWidgetEg1 extends StatelessWidget {
  const TextWidgetEg1({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Flutter Container'),
          ),
          body: Text(
            "Hello Flutter Devs",
            style: TextStyle(
                fontSize: 25,
                color: Colors.lightBlue,
                fontWeight: FontWeight.bold,
                backgroundColor: Colors.lightGreen),
          )),
    );
  }
}

class TextWidgetEg2 extends StatelessWidget {
  const TextWidgetEg2({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('Flutter Container'),
            ),
            body: Center(
              child: Text(
                'Hello, Flutter!',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.0,
                  wordSpacing: 4.0,
                  shadows: [
                    Shadow(
                      blurRadius: 10.0,
                      color: Colors.black,
                      offset: Offset(5.0, 5.0),
                    ),
                  ],
                ),
                textAlign: TextAlign.center,
              ),
            )));
  }
}
