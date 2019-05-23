public class Cards{
  ArrayList<Card> dealersCards = new ArrayList<Card> ();
  ArrayList<Card> playersCards = new ArrayList<Card> ();
  Card c;
  public Cards(int numOne, ArrayList<Card> playersCards){
    for (int i=0; i<=numOne; i++){
      c= new Card((int)(Math.random()*13+1), (int)(Math.random()*4+1));
      if (MiscMethods.contains(c, playersCards)==false)
        playersCards.add(c);
      else
        i--;
    }
  }
  public Cards(int numOne, int numTwo,ArrayList<Card> playersCards ,ArrayList<Card> dealersCards){
    for (int i=0; i<=numOne; i++){
      Card c= new Card((int)(Math.random()*13+1), (int)(Math.random()*4+1));
      if (MiscMethods.contains(c, dealersCards)==false)
        dealersCards.add(c);
      else
        i--;
    }
    for (int i=0; i<=numTwo; i++){
      Card c= new Card((int)(Math.random()*13+1), (int)(Math.random()*4+1));
      if (MiscMethods.contains(c, playersCards)==false)
        playersCards.add(c);
      else
        i--;
    }
  }
  public int addCards(ArrayList<Card> cardRay){
    int sum=0;
    int num=0;
    for (int i=0; i<cardRay.size(); i++){
      num=cardRay.get(i).getVal();
      sum+=num;
    }
    return sum;
  }
  public void addCard(ArrayList<Card> cardRay){
   cardRay.add(new Card((int)(Math.random()*13+1), (int)(Math.random()*4+1)));
  }
  public ArrayList getDealersCards(){
    return dealersCards;
  }
  public ArrayList getplayersCards(){
    return playersCards;
  }
}
