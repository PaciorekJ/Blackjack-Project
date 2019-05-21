public class Cards{
  ArrayList<Card> dealersCards = new ArrayList<Card> ();
  ArrayList<Card> playersCards = new ArrayList<Card> ();
  public Cards(ArrayList playersCards){
    
  }
  public Cards(int numOne, int numTwo,ArrayList<Card> playersCards ,ArrayList<Card> dealersCards){
    for (int i=0; i<=numOne; i++){
      playersCards= new Card();
    }
    for (int i=0; i<=numTwo; i++){
      int val=(int)(Math.random()*13+1);
      int suit=(int)(Math.random()*4+1);
      for ()
      dealersCards new Card()
    }
  }
  public int addCards(ArrayList card){
    int sum=0;
    for (int i=0; i<card.size(); i++){
      sum+=card.get(i);
    }
  }
  public ArrayList getDealersCards(){
    return dealersCards;
  }
  public ArrayList getplayersCards(){
    return playersCards;
  }
}
