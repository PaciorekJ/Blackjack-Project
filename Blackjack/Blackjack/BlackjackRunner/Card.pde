public class Card {
  int val;
  int suit;
  boolean dealer=false;
  public Card (int v, int s){
    val=v;
    suit=s;
  }
  public int getVal(){
    return val;
  }
  public int getSuit(){
    return suit;
  }
}
