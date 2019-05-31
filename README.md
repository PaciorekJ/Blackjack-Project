# Blackjack-Project

This is a game of blackjack with room for expansion into other areas such as "War" or "Texas Holdem Poker". The goal is to beat the dealer. The dealer is not allowed to give himself another card while he is at 17 or more. the goal is to get as close to 21 without going over 21. When the dealer is beat the house will match your bet, however, if you lose then the house gets to keep you money.

### Difficulties or opportunities you encountered along the way.

The most difficult part was figuring out the logic for who would win. This was hard because I needed to set up a system that would provide the correct result given multiple situations that could potentially occur. I had to develop situations for 3 different outcomes. The first being a push, neither the dealer nor the player win, the second being the dealer wins, and the third being the player wins. For each one of these I had to think critically about what could lead to this outcome. The dealer could bust, or go over 21, or the player could bust. The dealer could bust and the player could be under 21. The player could bust and the dealer could stay under 21. The dealer could have a greater number then the player (without either of them busting). The player could have a greater number then the dealer (without either of them busting).

### Most interesting piece of your code and explanation for what it does.

Code:

if (blackjackGame.getPlayersCards().size()==2 && blackjackGame.addCards(blackjackGame.getPlayersCards())==21){// 21 blackjack win
        text("You win! BLACKJACK!", width*.40, height*.50);
        cash=cash+(bet*2);
      }
      else if ((blackjackGame.over21(blackjackGame.dealersCards)==true && blackjackGame.over21(blackjackGame.playersCards)==true) || (blackjackGame.addCards(blackjackGame.getDealersCards())==blackjackGame.addCards(blackjackGame.getPlayersCards()))){//both over 21 or both have same total
        text("It's a push", width*.44, height*.50);
        cash=cash+bet;
      }
      else if ((blackjackGame.addCards(blackjackGame.getDealersCards())<blackjackGame.addCards(blackjackGame.getPlayersCards())) && blackjackGame.over21(blackjackGame.playersCards)!=true){//player has higher cards
        text("You win!", width*.46, height*.50);
        cash=cash+(bet*2);
      }
      else if ((blackjackGame.addCards(blackjackGame.getDealersCards())>blackjackGame.addCards(blackjackGame.getPlayersCards())) || (blackjackGame.over21(blackjackGame.playersCards)==true)){//player over 21 or dealer has high cards
        text("Dealer wins!", width*.44, height*.50);
      }
      
Explanation: 

This is the portion of my code that determines who wins the match. This code uses a method called over21 that requires a arrayList of type "Card". It will return wether the card set is over 21. Also it uses a method called addCards that sums an arraylist of type "card". Both this methods are used to determine who will win in this program.

## Built With

* [Processing](https://processing.org/) - The IDE used

## Authors

* **Jason Paciorek**

## Acknowledgments

* Hat tip to anyone whose code was used
* Inspiration
* etc
