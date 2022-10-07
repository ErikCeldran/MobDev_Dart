import 'cards.dart';
class Deck {
  List<Card> deckofcards = [];
  Deck() {
    var ranks = ['Ace', 'Two', 'Three', 'Four', 'Five', 'Six', 'Seven', 'Eight', 'Nine', 'Ten', 'Jack', 'Queen', 'King'];
    var suits = ['Clubs', 'Diamonds', 'Hearts', 'Spades'];
    
    for(var suit in suits) {
      for(var rank in ranks) {
        var card = new Card(rank, suit);
        deckofcards.add(card); 
      }
    }
  }
  printCards() {
    print("[");
    for (var card in deckofcards) {
      print("$card, ");
    }
    print("]\n");
  }

  shuffle() {
    deckofcards.shuffle();
  }

  cardsWithSuit(String suit) {
    var suitgroup = deckofcards.where((card) => card.suit == suit);
    print("List of $suit Cards:");
    print("[");
    for (var card in suitgroup) {
      print(card);
    }
    print("]\n");
  }
}