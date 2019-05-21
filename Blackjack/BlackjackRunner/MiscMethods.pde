public MiscMethods{
  public MiscMethods(){
  }
  public static boolean contains(Card c,ArrayList<Card> c1){
    for (int i=0; i<=C1.size(); i++){
      if (c.getVal==c1.getVal&&c.getSuit==c1.getSuit){
        return true;
      }
  }
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
  }
}
