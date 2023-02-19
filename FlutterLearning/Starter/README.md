## Standard Flutter Starter App

- [main.dart](https://github.com/jonfernq/Flutter-Flashcards/blob/main/FlutterLearning/Starter/main.dart)


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


```dart



```



```dart



```




```dart



```


```dart



```



```dart



```

