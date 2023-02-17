## Flashcard Slideshow

A flutter widget that iterates through a deck of flashcards in a similar fashion to a slide show. 

- An array of flashcards is called a deck.
- Each flashcard object has a front and a back which are text.
- The middle of the component displays text
and a 'next' button is located at the bottom of the component.
- The component begins by displaying the text on the front of a card.
- When 'next' is clicked, the text of the back of the card is displayed.
- When it is clicked again it moves on to the next card in the array,  
- displaying the front and then back, and then the next card, and so on.
- At the end of the array, it loops back to the first card. 

### Source Files

- [main.dart](https://github.com/jonfernq/Flutter-Flashcards/blob/main/FlashcardSlideshow/main.dart)

### Run in Online IDE

Run in [Zapp](https://zapp.run/edit/flutter-z37606kv3770?entry=lib/main.dart&file=lib/main.dart:0-1877).

### Code Explanation in Plain English

This code is a simple Flutter app that creates a Flashcard Slideshow.

The app consists of two main parts - the user interface and the logic to display the flashcards and navigate between them.

The user interface is created using Flutter's widgets, which are building blocks for creating visual elements. In this case, the app uses a Column widget to display the flashcard and two buttons - one to flip the card and the other to move to the next card. The Text widget displays the text of the current card, and the ElevatedButton widget creates two buttons with different labels.

The logic to display the flashcards and navigate between them is implemented using stateful widgets. The FlashcardSlideshow class extends the StatefulWidget class, which means that it can change its state dynamically. The state of the widget is managed by the _FlashcardSlideshowState class, which extends the State class. The state class contains the currentCard and showFront variables, which keep track of the current card and whether the front or back of the card is being displayed.

The _nextCard() function updates the state to move to the next card in the deck, and the _flipCard() function toggles the _showFront variable to display the front or back of the card.

The MyApp class creates the Flutter app by wrapping the FlashcardSlideshow widget with a MaterialApp widget that provides basic app functionality, such as the app title and navigation. The Scaffold widget creates the basic structure of the app, which includes an AppBar and a body where the FlashcardSlideshow widget is placed using the Center widget.

Overall, the app is a simple example of how to create a basic Flutter app with user interface and functionality using stateful widgets.

