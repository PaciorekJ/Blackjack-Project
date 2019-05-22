public MiscMethods{
  public MiscMethods(){
  }
  public static boolean contains(Card c,ArrayList<Card> c1){
    for (int i=0; i<=C1.size(); i++){
      if (c.getVal==c1.getVal&&c.getSuit==c1.getSuit){
        return true;
      }
    }
  }//end of contains
  public static boolean contains(Card c,ArrayList<Card> c1,ArrayList<Card> c2){
    for (int i=0; i<c1.size(); i++){
      if (c.getVal==c1.get(i).getVal&&c.getSuit==c1.get(i).getSuit){
        return true;
      }
      else{
        for (int j=0; j<c2.size(); j++){
          if (c.getVal==c2.get(j).getVal&&c.getSuit==c2.get(j).getSuit)
          return true;
        }
      }
        return false;
      }
  }// end of contains
  public String findSuit(Card c){
    int suitVal=c.getSuit();
    if(suitVal==1)
      return "Red Hearts";
    else if(suitVal==2;
      return "Black Clubs";
    else if(suitVal==3)
      return "Red Diamonds";
    else
      return "Black Spades";
  }
  public String findVal(Card c){
    int cVal=c.getVal();
    if(cVal==11)
      return "Jack";
    else if(cVal==12)
      return "Queen";
    else if(cVal==13)
      return "King";
    else if (cVal==1)
      return "Ace";
    else
      return (String)+cVal;
  }
  public String getCard(Card c){
    String cSuit=findSuit(c);
    String cVal=findVal(c);
    int index=cSuit.indexOf(" ");
    return cSuit.substring(0,index)+" "+cVal+" of "+cSuit.substring(index+1);
  }
}
