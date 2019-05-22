public class Cards{
  ArrayList<Card> dealersCards = new ArrayList<Card> ();
  ArrayList<Card> playersCards = new ArrayList<Card> ();
  public Cards(int numOne, ArrayList<Card> playersCards){
    for (int i=0; i<=numOne; i++){
      Card c= new Card((int)(Math.random()*13+1, (int)(Math.random()*4+1);
      if (c.contains==false)
        playersCards.add(new c);
      else
        i--;
    }
  }
  public Cards(int numOne, int numTwo,ArrayList<Card> playersCards ,ArrayList<Card> dealersCards){
    for (int i=0; i<=numOne; i++){
      Card c= new Card((int)(Math.random()*13+1, (int)(Math.random()*4+1);
      if (c.contains==false)
        dealersCards.add(new c);
      else
        i--;
    }
    for (int i=0; i<=numTwo; i++){
      Card c= new Card((int)(Math.random()*13+1, (int)(Math.random()*4+1);
      if (c.contains==false)
        playersCards.add(new c);
      else
        i--;
    }
    }
  }
  public int addCards(ArrayList c){
    int sum=0;
    for (int i=0; i<card.size(); i++){
      sum+=c.get(i);
    }
  }
  public ArrayList getDealersCards(){
    return dealersCards;
  }
  public ArrayList getplayersCards(){
    return playersCards;
  }
}
