public class Cards{
  ArrayList dealersCards = new ArrayList ();
  ArrayList playersCards = new ArrayList ();
  public Cards(){
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
