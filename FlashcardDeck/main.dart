import 'package:flutter/material.dart';

class FlashcardDeck extends StatefulWidget {
  final List<Map<String, dynamic>> deck;

  FlashcardDeck({required this.deck});

  @override
  _FlashcardDeckState createState() => _FlashcardDeckState();
}

class _FlashcardDeckState extends State<FlashcardDeck> {
  int _currentIndex = 0;
  bool _showFront = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flashcard Deck'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.center,
              child: Text(
                _showFront ? widget.deck[_currentIndex]['front'] : '',
                style: TextStyle(fontSize: 24),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Expanded(
            child: Container(
              alignment: Alignment.center,
              child: Text(
                _showFront ? '' : widget.deck[_currentIndex]['front'],
                style: TextStyle(fontSize: 24),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Expanded(
            child: Container(
              alignment: Alignment.center,
              child: Text(
                _showFront ? '' : widget.deck[_currentIndex]['back'],
                style: TextStyle(fontSize: 24),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          SizedBox(height: 16),
          _showFront
              ? ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _showFront = false;
                    });
                  },
                  child: Text('Flip'),
                )
              : ButtonBar(
                  alignment: MainAxisAlignment.center,
                  children: [
                    for (int i = 1; i <= 5; i++)
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            widget.deck[_currentIndex]['rating'] = i;
                            _currentIndex =
                                (_currentIndex + 1) % widget.deck.length;
                            _showFront = true;
                          });
                        },
                        child: Text('$i'),
                      ),
                  ],
                ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flashcard Deck',
      home: FlashcardDeck(
        deck: [
          {'front': 'Front of card 1', 'back': 'Back of card 1', 'rating': 0},
          {'front': 'Front of card 2', 'back': 'Back of card 2', 'rating': 0},
          {'front': 'Front of card 3', 'back': 'Back of card 3', 'rating': 0},
        ],
      ),
    );
  }
}
