public class Blackjack{
  ArrayList<Card> dealersCards = new ArrayList<Card> ();
  ArrayList<Card> playersCards = new ArrayList<Card> ();
  Card c;
  public Blackjack(){
    for (int i=0; i<4; i++){
      Card c= new Card((int)(Math.random()*13+1), (int)(Math.random()*4+1));
      if (i<2 && MiscMethods.contains(c,this.playersCards)==false)
        this.playersCards.add(c);
      else if(MiscMethods.contains(c,this.playersCards, this.dealersCards)==false)
        this.dealersCards.add(c);
      else
        i--;
    }
  }
  public int addCards(ArrayList<Card> cardRay){
    int sum=0;
    int aceCount=0;
    for (int i=0; i<cardRay.size(); i++){
      int num=cardRay.get(i).getVal();
      if (num>=10){
        sum+=10;
      }
      else if (num==1){
        aceCount++;
        sum+=11;
      }
      else{
        sum+=num;
      }
    }
      while(sum>21&&aceCount>=1){
        sum-=10;
        aceCount--;
    }
    return sum;
  }
  public void addCardPlayer(){
    Card c= new Card((int)(Math.random()*13+1), (int)(Math.random()*4+1));
   while(MiscMethods.contains(c, this.playersCards)==true){
     c= new Card((int)(Math.random()*13+1), (int)(Math.random()*4+1));
   }
   this.playersCards.add(c);
  }
  public void addCardDealer(){
    Card c= new Card((int)(Math.random()*13+1), (int)(Math.random()*4+1));
   while(MiscMethods.contains(c,this.playersCards, this.dealersCards)==true){
     c= new Card((int)(Math.random()*13+1), (int)(Math.random()*4+1));
   }
   this.dealersCards.add(c);
  }
  public void clearCards(){
     for (int i=this.playersCards.size()-1; i>=0; i--){
       this.playersCards.remove(i);
     }
     for (int i=this.dealersCards.size()-1; i>=0; i--){
       this.dealersCards.remove(i);
     }
  }
  public boolean over21(ArrayList<Card> ray){
    int val=addCards(ray);
    if (val>21){
     return true; 
    }
    return false;
  }
  public boolean splitCards(){
    return true; //needs implementation
  }
  public ArrayList getDealersCards(){
    return dealersCards;
  }
  public ArrayList getPlayersCards(){
    return playersCards;
  }
}
