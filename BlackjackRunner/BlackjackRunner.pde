boolean blackjack;
boolean poker;
boolean mainMenu;
boolean play=true;
boolean begin=false;
double cash;
int bet=0;
PImage blackjackTable;
Blackjack blackjackGame;

void setup(){
  blackjackTable=loadImage("blackjackTable.jpg");
  blackjack=false;
  poker=false;
  mainMenu=true;
  cash=100;
  fullScreen(); 
  drawMainMenu();
}

void draw(){
  
}
void mouseMoved(){
  if (mainMenu==true){
    if (mouseX>=(width/4)+20&&mouseX<=((width/4)+2)+(width/2)-(width*.03)&& mouseY>=height - (height*.68)&&mouseY<=height - (height*.68)+height - (height*.80)){
      fill(128,128,128);//highlight for blackjack selection outline
      rect((width/4)+20, height - (height*.68), (width/2)-(width*.03), height - (height*.80));
      fill(255,255,255);
      text("Begin a game of Blackjack", (width/4)+40, height - (height*.60));//blakjack selection text
    }
    else if (mouseX>=(width/4)+20&&mouseX<=((width/4)+2)+(width/2)-(width*.03)&& mouseY>=height - (height*.46)&&mouseY<=height - (height*.46)+height - (height*.80)){
      fill(128,128,128);//highlight for selection
      rect((width/4)+20, height - (height*.46), (width/2)-(width*.03), height - (height*.80));
      fill(255,255,255);
      text("Poker coming soon!", (width/4)+40, height - (height*.38));//Poker selection outline
    }
    else if (mouseX>=(width/4)+20&&mouseX<=((width/4)+2)+(width/2)-(width*.03)&& mouseY>=height - (height*.24)&&mouseY<=height - (height*.24)+height - (height*.80)){
      fill(128,128,128);//highlight for selection
      rect((width/4)+20, height - (height*.24), (width/2)-(width*.03), height - (height*.80));
      fill(255,255,255);
      text("New modes may come?!", (width/4)+40, height - (height*.16));//other poker game text
    }
    else {
    fill(0,0,0);
    text("Welcome to Gold Standard Poker", (width/4), height - (height*.90));
    text("Main Menu:", (width/4)+20, height - (height*.70));
    rect((width/4)+20, height - (height*.68), (width/2)-(width*.03), height - (height*.80));//blackjack selection outline
    rect((width/4)+20, height - (height*.46), (width/2)-(width*.03), height - (height*.80));//Poker selection outline
    rect((width/4)+20, height - (height*.24), (width/2)-(width*.03), height - (height*.80));//other poker game outline
    fill(255,255,255);
    text("Begin a game of Blackjack", (width/4)+40, height - (height*.60));//blakjack selection text
    text("Poker coming soon!", (width/4)+40, height - (height*.38));//Poker selection text
    text("New modes may come?!", (width/4)+40, height - (height*.16));//other poker game text
    }
  }//end of main menu buttons
  
  if(blackjack==true){
    if (mouseX>=width*.72&&mouseX<=width*.72+width*.20&& mouseY>=height-(height*.08)&&mouseY<=height-(height*.08)+height - (height*.08)){//hit button
      fill(128,128,128);//highlight for hit button outline
      rect(width*.71,height- (height*.08),width*.20,height*.08);//hit button outline
      fill(255,255,255);
      text("Hit", width*.79,height*.98);//hit sign text
    }
    else if (mouseX>=width*.51&&mouseX<=width*.72+width*.19&& mouseY>=height-(height*.08)&&mouseY<=height-(height*.08)+height - (height*.08)){//stand button
      fill(128,128,128);//highlight for blackjack selection outline
      rect(width*.51,height- (height*.08),width*.19,height*.08);//stand button outline
      fill(255,255,255);
      text("Stand", width*.58,height*.98);//stand sign text
    }
    else if (mouseX>=width*.30&&mouseX<=width*.72+width*.20&& mouseY>=height-(height*.08)&&mouseY<=height-(height*.08)+height - (height*.08)){//double down button
      fill(128,128,128);//highlight for blackjack selection outline
      rect(width*.30,height- (height*.08),width*.20,height*.08);//double down button outline
      fill(255,255,255);
      text("Double Down", width*.32,height*.98);//double down sign text
    }
    else if (mouseX>=width*.09&&mouseX<=width*.72+width*.20&& mouseY>=height-(height*.08)&&mouseY<=height-(height*.08)+height - (height*.08)){//split button
      fill(128,128,128);//highlight for blackjack selection outline
      rect(width*.09,height-(height*.08),width*.20,height*.08);//split button outline
      fill(255,255,255);
      text("Split", width*.17,height*.98);//split sign text
    }
    else if (mouseX>=width*.01&&mouseX<=width*.07+width*.07&& mouseY>=height-(height*.07)&&mouseY<=height-(height*.07)+height - (height*.07)){//Home button
      fill(128,128,128);//highlight for blackjack selection outline
      rect(width*.01,height- (height*.07),width*.07,height*.05);//Home button outline
      fill(255,255,255);
      textSize(30);
      text("Home", width*.02,height*.965);//Home sign text
      textSize(40);
    }
    else if (mouseX>=width - (width*.08)&&mouseX<=width - (width*.08)+width*.07&& mouseY>=height-(height*.07)&&mouseY<=height-(height*.07)+height - (height*.07)){//replay button
      fill(128,128,128);//highlight for replay outline
      rect(width - (width*.08),height- (height*.07),width*.07,height*.05);//replay button outline
      fill(255,255,255);
      textSize(30);
      text("Replay", width - (width*.075),height*.965);//replay sign text
      textSize(40);
    }
      else if (begin==false && mouseX>=width*.13&&mouseX<=width*.13+width*.10&& mouseY>=height-(height*.24)&&mouseY<=height-(height*.24)+height*.10){//bet 1 button
        fill(128,128,128);//highlight for bet 1 outline
        rect(width*.13,height-(height*.24),width*.10,height*.10);//bet 1 button outline
        fill(255,255,255);
        text("$1", width*.16,height-(height*.18));//bet 1 sign text
      }
      else if (begin==false && mouseX>=width*.24&&mouseX<=width*.24+width*.10&& mouseY>=height-(height*.24)&&mouseY<=height-(height*.24)+height*.10){//bet 10 button
        fill(128,128,128);//highlight for bet 10 outline
        rect(width*.24,height-(height*.24),width*.10,height*.10);//bet 10 button outline
        fill(255,255,255);
        text("$10", width*.26,height-(height*.18));//bet 10 sign text
      }
      else if (begin==false && mouseX>=width*.35&&mouseX<=width*.35+width*.10&& mouseY>=height-(height*.24)&&mouseY<=height-(height*.24)+height*.10){//bet 25 button
        fill(128,128,128);//highlight for bet 25 outline
        rect(width*.35,height-(height*.24),width*.10,height*.10);//bet 25 button outline
        fill(255,255,255);
        text("$25", width*.37,height-(height*.18));//bet 25 sign text
      }
      else if (begin==false && mouseX>=width*.46&&mouseX<=width*.46+width*.10&& mouseY>=height-(height*.24)&&mouseY<=height-(height*.24)+height*.10){//confirm button
        fill(128,128,128);//highlight for confrim outline
        rect(width*.46,height-(height*.24),width*.10,height*.10);//confirm bet button outline
        fill(255,255,255);
        text("Confirm", width*.46,height-(height*.18));//confirm sign text
      }
    else{
      drawBlackjack();
    }
  }
 }
void mousePressed(){
  if(mainMenu==true){
     if (mouseX>=(width/4)+20&&mouseX<=((width/4)+20)+(width/2)-(width*.03)&& mouseY>=height - (height*.68)&&mouseY<=height - (height*.68)+height - (height*.80)){//button for entering blackjack
      blackjack=true;
      poker=false;
      mainMenu=false;
      blackjackGame = new Blackjack();
      drawBlackjack();
    }//button for entering blackjack
  }
  if(blackjack==true){
    if (mouseX>=width*.72&&mouseX<=width*.72+width*.20&& mouseY>=height-(height*.08)&&mouseY<=height-(height*.08)+height - (height*.08)){//hit button
      blackjackGame.addCardPlayer();
      if (blackjackGame.over21(blackjackGame.playersCards)==true)
        play=false;
    }
    else if (mouseX>=width*.51&&mouseX<=width*.51+width*.19&& mouseY>=height-(height*.08)&&mouseY<=height-(height*.08)+height - (height*.08)){//stand button
      play=false;
    }
    else if (mouseX>=width*.30&&mouseX<=width*.30+width*.20&& mouseY>=height-(height*.08)&&mouseY<=height-(height*.08)+height - (height*.08)){//double down button
      if (cash-bet>=0){
      blackjackGame.addCardPlayer();
      cash-=bet;
      bet*=2;
      play=false;
      }
    }
    else if (mouseX>=width*.09&&mouseX<=width*.09+width*.20&& mouseY>=height-(height*.08)&&mouseY<=height-(height*.08)+height - (height*.08)){//split button
      //needs implementation
    }
    else if (mouseX>=width*.01&&mouseX<=width*.01+width*.07&& mouseY>=height-(height*.07)&&mouseY<=height-(height*.07)+height - (height*.07)){//Home button
      blackjack=false;
      poker=false;
      mainMenu=true;
      begin=false;
      play=true;
      drawMainMenu();
    }
    else if (mouseX>=width - (width*.08)&&mouseX<=width - (width*.08)+width*.07&& mouseY>=height-(height*.07)&&mouseY<=height-(height*.07)+height - (height*.07)){// replay button
    begin=false;
    play=true;;
    blackjackGame = new Blackjack();
    drawBlackjack();
  }
     else if (begin==false && mouseX>=width*.13&&mouseX<=width*.13+width*.10&& mouseY>=height-(height*.24)&&mouseY<=height-(height*.24)+height*.10){//bet 1 button
        if (cash-1>=0){
        bet+=1;
        cash-=1;
        }
      }
      else if (begin==false && mouseX>=width*.24&&mouseX<=width*.24+width*.10&& mouseY>=height-(height*.24)&&mouseY<=height-(height*.24)+height*.10){//bet 10 button
        if (cash-10>=0){
        bet+=10;
        cash-=10;
        }
      }
      else if (begin==false && mouseX>=width*.35&&mouseX<=width*.35+width*.10&& mouseY>=height-(height*.24)&&mouseY<=height-(height*.24)+height*.10){//bet 25 button
        if (cash-25>=0){
        bet+=25;
        cash-=25;
        }
      }
      else if (begin==false && mouseX>=width*.46&&mouseX<=width*.46+width*.10&& mouseY>=height-(height*.24)&&mouseY<=height-(height*.24)+height*.10){//confirm button
       begin=true;
      }
  }
}
void drawMainMenu(){
  background(0);
  fill(255,215,0);
  rect(0, height - (height*.98), width, height - (height*.85));//title outline
  rect(width - (width*.75), height-(height*.75), width*.50, height*.80);//main menu outline
  textSize(40);
  fill(0,0,0);
  text("Welcome to Gold Standard Poker", (width/4), height - (height*.90));
  text("Main Menu:", (width/4)+20, height - (height*.70));//main menu text
  rect((width/4)+20, height - (height*.68), (width/2)-(width*.03), height - (height*.80));//blackjack selection outline
  rect((width/4)+20, height - (height*.46), (width/2)-(width*.03), height - (height*.80));//Poker selection outline
  rect((width/4)+20, height - (height*.24), (width/2)-(width*.03), height - (height*.80));//other poker game outline
  fill(255,255,255);//color for texts
  text("Begin a game of Blackjack", (width/4)+40, height - (height*.60));//blakjack selection text
  text("Poker coming soon!", (width/4)+40, height - (height*.38));//Poker selection text
  text("New modes may come?!", (width/4)+40, height - (height*.16));//other poker game text
}


void drawBlackjack(){
  fill(0,0,0);
  rect(0,0,width,height);//background
  //image(blackjackTable, width*.01, height*.01);
  fill(255,215,0);
  rect(width*.70,height*.13,width*.25,height*.25);//dealer score outline
  rect(width*.70,height*.61,width*.25,height*.25);//player score outline
  rect(0,0,width,height*.10);//gold banner at the top of blackjack
  rect(0,height- (height*.10),width,height*.10);//gold banner at the bottom of blackjack
  rect(width*.01,height- (height*.25),width*.56,height*.12);//gold banner behind bet
  rect(width*.01,height*.11,width-(width*.65),height*.60);//gold box for console where cards are displayed
  fill(0,0,0);
  rect(width*.75,height*.02,width*.24,height*.07);//Cash sign outline
  rect(width*.02,height*.02,width*.24,height*.07);//Blackjack sign outline
  rect(width*.71,height- (height*.08),width*.20,height*.08);//hit button outline
  rect(width*.51,height- (height*.08),width*.19,height*.08);//stand button outline
  rect(width*.30,height- (height*.08),width*.20,height*.08);//double down button outline
  rect(width*.09,height-(height*.08),width*.20,height*.08);//split button outline
  rect(width*.01,height- (height*.07),width*.07,height*.05);//Home button outline
  rect(width - (width*.08),height- (height*.07),width*.07,height*.05);//replay button outline
  rect(width*.02,height-(height*.24),width*.10,height*.10);//bet button outline
  rect(width*.13,height-(height*.24),width*.10,height*.10);//bet 1 button outline
  rect(width*.24,height-(height*.24),width*.10,height*.10);//bet 10 button outline
  rect(width*.35,height-(height*.24),width*.10,height*.10);//bet 25 button outline
  rect(width*.46,height-(height*.24),width*.10,height*.10);//confirm bet button outline
  fill(0,0,0);
  if (begin==true){
    text("The player has : "+blackjackGame.addCards(blackjackGame.getPlayersCards()), width*.71,height*.66);//Player total sign text
    textSize(20);
      text("Your cards: ", width*.015, height*.15);
      for (int i=0; i<blackjackGame.getPlayersCards().size();i++){
        Card c=blackjackGame.playersCards.get(i);
        text(MiscMethods.getCard(c), width*.015, height*((.05*(i+1))+.15));
       }
      text("Dealers cards:", width*.17, height*.15);
      Card c=blackjackGame.dealersCards.get(0);
      text(MiscMethods.getCard(c), width*.17, height*.20);
     textSize(40);
    if (play==false){
      text("The dealer has :"+blackjackGame.addCards(blackjackGame.getDealersCards()),width*.71,height*.18);//dealer total sign text
      endBlackjack();
    }
    else {
      text("The dealer has : ???",width*.71,height*.18);//Blackjack sign text
      }
  }
  fill(255,255,255);
  text("Cash: "+cash, width*.76,height*.07);//cash sign text
  text("Blackjack Poker",width*.03,height*.07);//Blackjack sign text
  text("Hit", width*.79,height*.98);//hit sign text
  text("Stand", width*.58,height*.98);//stand sign text
  text("Double Down", width*.32,height*.98);//double down sign text
  text("Split", width*.17,height*.98);//split sign text
  textSize(30);
  text("Home", width*.02,height*.965);//Home sign text
  text("Replay", width - (width*.075),height*.965);//replay sign text
  textSize(40);
  text("Bet:"+bet, width*.025,height-(height*.18));//bet sign text
  text("$1", width*.16,height-(height*.18));//bet 1 sign text
  text("$10", width*.26,height-(height*.18));//bet 10 sign text
  text("$25", width*.37,height-(height*.18));//bet 25 sign text
  text("Confirm", width*.46,height-(height*.18));//confirm sign text
}
void endBlackjack(){
      while(blackjackGame.addCards(blackjackGame.getDealersCards())<17){
        blackjackGame.addCardDealer();
      }
      fill(255,215,0);
      rect(width*.40,height*.40, width*.20, height*.20);
      fill(0,0,0);
      textSize(30);
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
      textSize(20);
      text("Your cards: ", width*.015, height*.15);
      for (int i=0; i<blackjackGame.getPlayersCards().size();i++){
        Card c=blackjackGame.playersCards.get(i);
        text(MiscMethods.getCard(c), width*.015, height*((.05*(i+1))+.15));
       }
      text("Dealers cards:", width*.17, height*.15);
       for (int i=0; i<blackjackGame.getDealersCards().size();i++){
          Card c=blackjackGame.dealersCards.get(i);
          text(MiscMethods.getCard(c), width*.17, height*((.05*(i+1))+.15));
      }
      textSize(40);
      bet=0;
}
