## Flashcard Deck

Deck of flashcards with rating of each flashcard for mastery (see [React.js version](https://github.com/jonfernq/React-Flashcards/tree/main/FlashcardDeck)).

FlashcardDeck is a React.js component that iterates through a deck of flashcards
allowing the user to provide a rating of their mastery of each flashcard
by selecting a button from 1 to 5.

- The input to the component is an array of flashcards called a deck. 
The component iterates over the objects in the array.

- Each flashcard object in this deck has a front with text, a back with text, and a rating from 1 to 5. 

- The component has two screens: the front screen and the back screen.
 
- For a given object during iteration through the objects,
the front screen is displayed first, then the back screen. 

- When the component has iterated through all objects in the array,
it begins again at the beginning. 

- The middle of each screen displays a text: front text or back text.
Along the bottom of the screen is a button bar displaying buttons.

- The front screen has a 'next' button, that when pressed displays the back screen. 

- The back screen has 5 buttons labelled 1 to 5, that when pressed
update the 'rating' field of the current object with the selected number. 

- After that, the component iterates to the next object in the array,
displaying the front screen. 

```dart
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
```
 
### Code Explanation in Plain English

This is a Flutter application that displays a deck of flashcards on the screen. The main component is a FlashcardDeck class, which is a stateful widget that maintains the state of the deck, including which card is currently being shown and whether the front or back of the card is visible.

The FlashcardDeck widget takes a list of cards as a parameter and creates a column of widgets that display the current card on the screen. The screen is split into three sections, each containing a Text widget that displays either the front or back of the current card. The top section shows the front of the card when _showFront is true. The middle section is empty, and the bottom section shows the back of the card when _showFront is false.

There are two ElevatedButton widgets that appear at the bottom of the screen, depending on the state of _showFront. If _showFront is true, the button displays "Flip". If _showFront is false, a set of five buttons appears, numbered one through five. These buttons allow the user to rate the card and move on to the next one in the deck.

Whenever the user presses the "Flip" button, the _showFront boolean is toggled, causing the front or back of the card to appear in the appropriate sections of the screen. Whenever the user presses a numbered button, the rating of the current card is updated, the index of the current card is advanced, and _showFront is set to true to show the front of the next card.

Finally, the MyApp class sets up the MaterialApp and passes an instance of FlashcardDeck to the home property to display the flashcards on the screen.

### Run in Online IDE

![flutter_1_5](https://user-images.githubusercontent.com/68504324/219983727-f2238969-f62e-4dcc-91a4-0cc8bd1a76ce.jpg)

### Source Files

- [main.dart](https://github.com/jonfernq/Flutter-Flashcards/blob/main/FlashcardDeck/main.dart)






 
                                          
                                          
