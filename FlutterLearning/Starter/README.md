## Standard Flutter Starter App

- [main.dart](https://github.com/jonfernq/Flutter-Flashcards/blob/main/FlutterLearning/Starter/main.dart): The standard starter app for Flutter. 
Also the [starter app in Zapp!: Zapp! An online Dart & Flutter sandbox in the browser](https://zapp.run/edit/flutter?entry=lib/main.dart&file=lib/main.dart:0-4129), 
an quick online IDE for creating apps without dealing with Flutter installation on one's own machine.

A simple Flutter app that displays a home page with a counter that increments every time a button is pressed. Here is a detailed explanation of the code:

First, the Flutter and material design packages are imported:

```dart
import 'package:flutter/material.dart';
```

Next, the main() function is defined, which is the entry point for the app:

```dart
void main() {
  runApp(const MyApp());
}
```

Here, the runApp() function is called to start the app, and it passes an instance of the MyApp widget as the root of the app.

The MyApp class extends StatelessWidget and overrides the build() method to return an instance of the MaterialApp widget:

```dart
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      theme: ThemeData(
        colorSchemeSeed: Colors.indigo,
        useMaterial3: true,
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData(
        colorSchemeSeed: Colors.blue,
        useMaterial3: true,
        brightness: Brightness.dark,
      ),
      home: const MyHomePage(title: 'Flutter Example App'),
      debugShowCheckedModeBanner: false,
    );
  }
}
```

Here, the MaterialApp widget is used to define the overall theme and navigation structure of the app. It has several properties, including the title, theme, darkTheme, home, and debugShowCheckedModeBanner.

The MyHomePage widget is the home page of the app, and it extends StatefulWidget. It takes a title parameter and returns an instance of _MyHomePageState, which is a stateful widget that manages the counter:

```dart
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
```

The build() method of _MyHomePageState returns an instance of the Scaffold widget, which provides the basic visual structure of the home page:

```dart
class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
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

Here, the Scaffold widget has an appBar property that displays the app bar with the title passed in from the MyHomePage widget. The body property is a Center widget that contains a Column widget with two Text widgets: one is a constant string and the other is the current value of the counter. The floatingActionButton is a FloatingActionButton widget that calls the _incrementCounter() function when pressed.

In summary, this app defines a simple home page with a counter that increments every time a button is pressed. The app structure is defined using the MaterialApp and Scaffold widgets.

The MyHomePage class extends StatefulWidget, which means it has mutable state that can change over time. The stateful widget can be rebuilt when its internal state changes. The MyHomePage widget displays a counter and a button that increments the counter when pressed. The counter variable is initialized to zero in the _MyHomePageState class, which is the State for the MyHomePage widget.

When the user taps the FloatingActionButton, the _incrementCounter() function is called, which increments the counter variable by one and calls the setState() method to update the state of the widget. This triggers the build() method to be called again, which rebuilds the widget with the new value of counter.

The build() method returns a Scaffold widget, which provides a standard app layout with an app bar, body, and floating action button. The app bar displays the title of the app passed in through the title parameter of the MyHomePage widget. The body contains a Center widget, which centers its child vertically and horizontally. The child is a Column widget that contains two Text widgets. The first Text widget displays a fixed string, while the second Text widget displays the current value of the counter variable.

The floatingActionButton property of the Scaffold widget is set to a FloatingActionButton widget, which displays a circular button with a plus icon. When the button is pressed, it calls the _incrementCounter() function to increment the counter.

Finally, the MaterialApp widget is used to configure the app's theme and provide the root widget of the app. The title parameter sets the title of the app displayed in the task switcher. The theme parameter sets the app's light theme, while the darkTheme parameter sets the app's dark theme. The home parameter is set to an instance of the MyHomePage widget, which is the initial screen of the app. The debugShowCheckedModeBanner parameter is set to false to disable the debug banner that is displayed when the app is running in debug mode.


```



```dart



```




```dart



```


```dart



```



```dart



```

