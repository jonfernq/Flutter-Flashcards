import 'dart:convert';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flashcard Sets',
      home: FlashcardSetListPage(),
    );
  }
}

class FlashcardSet {
  final String name;
  final List<Flashcard> cards;

  FlashcardSet({required this.name, required this.cards});
}

class Flashcard {
  final String front;
  final String back;

  Flashcard({required this.front, required this.back});
  
  @override
  String toString() {
       return '{front: $front, back: $back}';
  }
}

class FlashcardSetListPage extends StatefulWidget {
  @override
  _FlashcardSetListPageState createState() => _FlashcardSetListPageState();
}

class _FlashcardSetListPageState extends State<FlashcardSetListPage> {
  List<FlashcardSet> _flashcardSets = [];

  @override
  void initState() {
    super.initState();
    // Load the flashcard sets from a JSON file
    String json = '''
    [
      {
        "name": "Numbers",
        "cards": [
          {"front": "One", "back": "Uno"},
          {"front": "Two", "back": "Dos"},
          {"front": "Three", "back": "Tres"}
        ]
      },
      {
        "name": "Colors",
        "cards": [
          {"front": "Red", "back": "Rojo"},
          {"front": "Blue", "back": "Azul"},
          {"front": "Green", "back": "Verde"}
        ]
      }
    ]
    ''';
    List<dynamic> data = jsonDecode(json);
    _flashcardSets = data.map((set) {
      String name = set['name'];
      List<dynamic> cards = set['cards'];
      List<Flashcard> flashcards = cards.map((card) {
        String front = card['front'];
        String back = card['back'];
        return Flashcard(front: front, back: back);
      }).toList();
      return FlashcardSet(name: name, cards: flashcards);
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flashcard Sets'),
      ),
      body: ListView.builder(
        itemCount: _flashcardSets.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(_flashcardSets[index].name),
            trailing: ElevatedButton(
              onPressed: () {
                // Print the selected flashcard set to the console
                print(_flashcardSets[index].cards);
              },
              child: Text('View'),
            ),
          );
        },
      ),
    );
  }
}
