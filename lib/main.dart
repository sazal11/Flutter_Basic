import 'dart:async';

import 'package:flutter/material.dart';

void main() {
  runApp(const ListViewExample1());
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
        title: const Text('Flutter Container'),
      ),
      body: Center(
        child: Container(
          width: 200,
          height: 100,
          color: Colors.blueGrey,
          child: const Center(
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
  const MyApp1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Container Example'),
        ),
        body: Center(
          child: Container(
            width: 200,
            height: 100,
            padding: const EdgeInsets.all(16.0),
            margin: const EdgeInsets.all(16.0),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(8.0),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 10.0,
                  spreadRadius: 2.0,
                ),
              ],
            ),
            child: const Text(
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
          title: const Text('Center Widget Example'),
        ),
        body: const Center(
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
          title: const Text('Center Widget Example'),
        ),
        body: const Center(
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
            title: const Text('Flutter Container'),
          ),
          body: const Text(
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
              title: const Text('Flutter Container'),
            ),
            body: const Center(
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

class TextButtonEg1 extends StatelessWidget {
  const TextButtonEg1({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: const Text('Button Example'),
            ),
            body: TextButton(
                onPressed: () {
                  print('Text Button Tapped');
                },
                onLongPress: () {
                  print('Long Pressed');
                },
                child: const Text('Click Here'))));
  }
}

class ElevatedButtonEg1 extends StatelessWidget {
  const ElevatedButtonEg1({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: const Text('Elevated Button Example'),
            ),
            body: ElevatedButton(
                onPressed: () {
                  print('Elevated Button pressed');
                },
                child: const Text('Elevated Button'))));
  }
}

class OutLinedButtonEg1 extends StatelessWidget {
  const OutLinedButtonEg1({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: const Text('Elevated Button Example'),
            ),
            body: Padding(
              padding: const EdgeInsets.all(8.0),
              child: OutlinedButton(
                  onPressed: () {
                    print('Outlined Button Pressed');
                  },
                  child: const Text('Outlined Button')),
            )));
  }
}

class IconButtonEg1 extends StatelessWidget {
  const IconButtonEg1({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: const Text('Icon Button Example'),
            ),
            body: IconButton(
                onPressed: () {
                  print('Icon Button');
                },
                icon: const Icon(Icons.thumb_up))));
  }
}

class FloatingActionButtonEg1 extends StatelessWidget {
  const FloatingActionButtonEg1({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: const Text('Icon Button Example'),
            ),
            body: FloatingActionButton(
              onPressed: () {
                print('Floating Action Button Pressed');
              },
              child: const Icon(Icons.add),
            )));
  }
}

class DropdownButtonEg1 extends StatefulWidget {
  const DropdownButtonEg1({super.key});

  @override
  _DropdownButtonEg1State createState() => _DropdownButtonEg1State();
}

class _DropdownButtonEg1State extends State<DropdownButtonEg1> {
  String dropdownValue = 'One';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('DropdownButton Example'),
        ),
        body: Center(
          child: DropdownButton<String>(
            value: dropdownValue,
            onChanged: (String? newValue) {
              setState(() {
                dropdownValue = newValue!;
              });
            },
            items: <String>['One', 'Two', 'Three', 'Four']
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}

class PopupMenuButtonEg extends StatefulWidget {
  const PopupMenuButtonEg({super.key});

  @override
  _PopupMenuButtonEgState createState() => _PopupMenuButtonEgState();
}

class _PopupMenuButtonEgState extends State<PopupMenuButtonEg> {
  String selectedOption = 'Option 1';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('PopupMenuButton Example'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Selected: $selectedOption',
                style: const TextStyle(fontSize: 24),
              ),
              PopupMenuButton<String>(
                onSelected: (String result) {
                  setState(() {
                    selectedOption = result;
                  });
                },
                itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
                  const PopupMenuItem<String>(
                    value: 'Option 1',
                    child: Text('Option 1'),
                  ),
                  const PopupMenuItem<String>(
                    value: 'Option 2',
                    child: Text('Option 2'),
                  ),
                  const PopupMenuItem<String>(
                    value: 'Option 3',
                    child: Text('Option 3'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BackButtonExample extends StatelessWidget {
  const BackButtonExample({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Back Button Example'),
          leading: BackButton(
            color: Colors.black, // Optional: customize the color
            onPressed: () {
              // Custom action before popping the screen
              Navigator.pop(context);
            },
          ),
        ),
        body: const Center(
          child: Text('Press the back button to go back.'),
        ),
      ),
    );
  }
}

class CloseButtonExample extends StatelessWidget {
  const CloseButtonExample({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Close Button Example'),
          leading: CloseButton(
            color: Colors.red, // Optional: customize the color
            onPressed: () {
              // Custom action before closing the screen
              Navigator.pop(context);
            },
          ),
        ),
        body: const Center(
          child: Text('Press the close button to close this page.'),
        ),
      ),
    );
  }
}

class GestureDetectorExample extends StatefulWidget {
  const GestureDetectorExample({super.key});

  @override
  _GestureDetectorExampleState createState() => _GestureDetectorExampleState();
}

class _GestureDetectorExampleState extends State<GestureDetectorExample> {
  Color _containerColor = Colors.blue;

  void _changeColor() {
    setState(() {
      _containerColor =
          _containerColor == Colors.blue ? Colors.green : Colors.blue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('GestureDetector Example'),
        ),
        body: Center(
          child: GestureDetector(
            onTap: _changeColor,
            child: Container(
              width: 200,
              height: 200,
              color: _containerColor,
              child: const Center(
                child: Text(
                  'Tap Me',
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class ImageExample1 extends StatefulWidget {
  const ImageExample1({super.key});

  @override
  _ImageExample1Example1State createState() => _ImageExample1Example1State();
}

class _ImageExample1Example1State extends State<ImageExample1> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Image Example'),
          ),
          body: Center(
              child: SizedBox(
                  width: 100,
                  height: 100,
                  child: Image.asset('assets/images/logo.png')))),
    );
  }
}

class AssetImageExample extends StatelessWidget {
  const AssetImageExample({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Asset Image Example'),
        ),
        body: Center(
          child: Image.asset(
            'assets/images/wolf-flutter.jpg',
            width: 200,
            height: 200,
            fit: BoxFit
                .cover, // Optional: Adjust how the image fits in the container
          ),
        ),
      ),
    );
  }
}

class NetworkImageExample extends StatelessWidget {
  const NetworkImageExample({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Network Image Example'),
        ),
        body: Center(
          child: Image.network(
            'https://picsum.photos/250?image=9',
            width: 200,
            height: 200,
            fit: BoxFit
                .cover, // Optional: Adjust how the image fits in the container
          ),
        ),
      ),
    );
  }
}

class CustomImageExample extends StatelessWidget {
  const CustomImageExample({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Custom Image Example'),
        ),
        body: Center(
          child: Image.network(
            'https://picsum.photos/250?image=9',
            width: 300,
            height: 300,
            fit: BoxFit.cover,
            alignment: Alignment.topCenter,
            color: Colors.blue.withOpacity(0.5),
            colorBlendMode: BlendMode.colorBurn,
          ),
        ),
      ),
    );
  }
}

class ColumnExample1 extends StatelessWidget {
  const ColumnExample1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Row Column Example'),
          ),
          body: Container(
            height: 400,
            width: 300,
            color: Colors.orangeAccent,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text('R1', style: TextStyle(fontSize: 25)),
                    const Text('R2', style: TextStyle(fontSize: 25)),
                    Column(
                      children: [
                        ElevatedButton(
                            onPressed: () {}, child: const Text('Button1')),
                        ElevatedButton(
                            onPressed: () {}, child: const Text('Button2'))
                      ],
                    ),
                    const Text('R3', style: TextStyle(fontSize: 25)),
                    const Text('R4', style: TextStyle(fontSize: 25)),
                    const Text('R5', style: TextStyle(fontSize: 25)),
                  ],
                ),
                const Text('A', style: TextStyle(fontSize: 25)),
                const Text('B', style: TextStyle(fontSize: 25)),
                const Text('C', style: TextStyle(fontSize: 25)),
                const Text('D', style: TextStyle(fontSize: 25)),
                const Text('E', style: TextStyle(fontSize: 25)),
                ElevatedButton(onPressed: () {}, child: const Text('Click'))
              ],
            ),
          )),
    );
  }
}

class RowExample2 extends StatelessWidget {
  const RowExample2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Row Example')),
        body: const Row(
          mainAxisAlignment: MainAxisAlignment.center, // Center horizontally
          crossAxisAlignment: CrossAxisAlignment.center, // Center vertically
          children: <Widget>[
            Icon(Icons.star, size: 50, color: Colors.red),
            Icon(Icons.star, size: 50, color: Colors.green),
            Icon(Icons.star, size: 50, color: Colors.blue),
          ],
        ),
      ),
    );
  }
}

class ColumnExample2 extends StatelessWidget {
  const ColumnExample2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Column Example')),
        body: const Column(
          mainAxisAlignment: MainAxisAlignment.center, // Center vertically
          crossAxisAlignment: CrossAxisAlignment.center, // Center horizontally
          children: <Widget>[
            Icon(Icons.star, size: 50, color: Colors.red),
            Icon(Icons.star, size: 50, color: Colors.green),
            Icon(Icons.star, size: 50, color: Colors.blue),
          ],
        ),
      ),
    );
  }
}

class NestedRowColumnExample extends StatelessWidget {
  const NestedRowColumnExample({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Nested Row and Column Example')),
        body: const Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Icon(Icons.star, size: 50, color: Colors.red),
                Icon(Icons.star, size: 50, color: Colors.green),
                Icon(Icons.star, size: 50, color: Colors.blue),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Icon(Icons.circle, size: 50, color: Colors.orange),
                Icon(Icons.circle, size: 50, color: Colors.purple),
                Icon(Icons.circle, size: 50, color: Colors.yellow),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class InkWellExample1 extends StatelessWidget {
  const InkWellExample1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: const Text('InkWell Example')),
            body: Center(
              child: InkWell(
                onTap: () {
                  print('Tapped on Container');
                },
                onDoubleTap: () {
                  print('Double Tapped on Container');
                },
                onLongPress: () {
                  print('Long Pressed  on Container');
                },
                child: Container(
                  width: 200,
                  height: 200,
                  color: Colors.red,
                  child: Center(
                    child: InkWell(
                      onTap: () {
                        print("Text Widget Tapped");
                      },
                      child: const Text(
                        "Click Here",
                        style: TextStyle(
                            fontSize: 21, fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                ),
              ),
            )));
  }
}

class ScrollViewExample extends StatelessWidget {
  const ScrollViewExample({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.orange,
            title: const Text('Scroll View Widget Example'),
          ),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 11),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Container(
                              margin: const EdgeInsets.only(right: 11),
                              height: 200,
                              width: 200,
                              color: Colors.red),
                          Container(
                              margin: const EdgeInsets.only(right: 11),
                              height: 200,
                              width: 200,
                              color: Colors.orange),
                          Container(
                              margin: const EdgeInsets.only(right: 11),
                              height: 200,
                              width: 200,
                              color: Colors.blue),
                          Container(
                              margin: const EdgeInsets.only(right: 11),
                              height: 200,
                              width: 200,
                              color: Colors.yellow),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(bottom: 11),
                    height: 200,
                    color: Colors.orange,
                  ),
                  Container(
                    margin: const EdgeInsets.only(bottom: 11),
                    height: 200,
                    color: Colors.green,
                  ),
                  Container(
                    margin: const EdgeInsets.only(bottom: 11),
                    height: 200,
                    color: Colors.cyanAccent,
                  ),
                ],
              ),
            ),
          )),
    );
  }
}

class ListViewExample1 extends StatelessWidget {
  const ListViewExample1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar( backgroundColor: Colors.orange,title: const Text('List View Example')),
          
          body: ListView(
            scrollDirection: Axis.vertical,
            reverse: true,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('One',style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Two',style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Three',style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Four',style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Five',style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),),
              ),
              

            ],
          )),
    );
  }
}
