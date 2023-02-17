import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<Map<String, String>> deck = [
    {'front': 'Front of Card 1', 'back': 'Back of Card 1'},
    {'front': 'Front of Card 2', 'back': 'Back of Card 2'},
    {'front': 'Front of Card 3', 'back': 'Back of Card 3'},
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flashcard Slideshow',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flashcard Slideshow'),
        ),
        body: Center(
          child: FlashcardSlideshow(deck),
        ),
      ),
    );
  }
}

class FlashcardSlideshow extends StatefulWidget {
  final List<Map<String, String>> deck;

  FlashcardSlideshow(this.deck);

  @override
  _FlashcardSlideshowState createState() => _FlashcardSlideshowState();
}

class _FlashcardSlideshowState extends State<FlashcardSlideshow> {
  int _currentCard = 0;
  bool _showFront = true;

  void _nextCard() {
    setState(() {
      _currentCard = (_currentCard + 1) % widget.deck.length;
      _showFront = true;
    });
  }

  void _flipCard() {
    setState(() {
      _showFront = !_showFront;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          _showFront ? widget.deck[_currentCard]['front'] ?? '' : widget.deck[_currentCard]['back'] ?? '',
          style: TextStyle(fontSize: 24),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 16),
        ElevatedButton(
          onPressed: _flipCard,
          child: Text(_showFront ? 'Flip Card' : 'Flip Back'),
        ),
        SizedBox(height: 16),
        ElevatedButton(
          onPressed: _nextCard,
          child: Text('Next Card'),
        ),
      ],
    );
  }
}
