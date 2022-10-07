import 'models/deck.dart';

void main() {
//make new deck
  var deck = new Deck();
//print deck
  deck.printCards();
//shuffles deck
  deck.shuffle();
  deck.printCards();

//List cards with specific Suit:
  
  // deck.cardsWithSuit("Hearts");
  // deck.cardsWithSuit("Diamonds");
  deck.cardsWithSuit("Clubs");
  // deck.cardsWithSuit("Spades");

}