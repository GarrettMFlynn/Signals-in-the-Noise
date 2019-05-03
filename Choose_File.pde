void ChooseFile(){
 boolean overMessageOne = false;
 boolean overMessageTwo = false;
 boolean overMessageThree = false;
 rectMode(CENTER);
 textAlign(CENTER,CENTER);
 Prompt();
 
  if ((mouseY >= height/2 -((1+rectFactorResponsive)*verticalSpacingMinimal)) && (pmouseY <= ((height/2) - ((1-rectFactorResponsive)*verticalSpacingMinimal))) && (sequence == 2)){
  overMessageOne = true;
  }
  
  if ((mouseY <= height/2 + ((1+rectFactorResponsive)*verticalSpacingMinimal)) && (pmouseY >= (height/2) + ((1-rectFactorResponsive)*verticalSpacingMinimal)) && (sequence == 2)){
  overMessageTwo = true;
  }
  
  if ((mouseY <= height/2 + 3*((1+rectFactorResponsive)*verticalSpacingMinimal)) && (pmouseY >= (height/2) + 3*((1-rectFactorResponsive)*verticalSpacingMinimal)) && (sequence == 2)){
  overMessageThree = true;
  }
  
  while (overMessageOne == true){
      fill(white);
      noStroke();
      rect(width/2, (height/2)-(0.9*verticalSpacingMinimal), rectWidth,rectHeight);
      fill(black);
      text("Memory Decoding — 4 Channels (Raw)", width/2, (height/2) - verticalSpacingMinimal);
  
      if (mousePressed == true) {
          fileChoice = "ClipArt1_4Raw.csv";
          background(black);
          delay(250);
          sequence = 3;
  }
  overMessageOne = false;
}
    while (overMessageTwo == true) {
      fill(white);
      noStroke();
      rect(width/2, (height/2)+(1.1*verticalSpacingMinimal), rectWidth,rectHeight);
      fill(black);
      text("Memory Decoding — 4 Channels (Filtered)", width/2, (height/2) + verticalSpacingMinimal);
      
      
       if(mousePressed == true) {
          fileChoice = "ClipArt1_4Filtered.csv";
          background(black);
          delay(250);
          sequence = 3;
  }
  
overMessageTwo = false;

}
    while (overMessageThree == true) {
      fill(white);
      rect(width/2, (height/2)+(3.1*verticalSpacingMinimal), rectWidth,rectHeight);
      fill(black);
      text("Memory Decoding — 10 Channels (Filtered)", width/2, (height/2) + 3*verticalSpacingMinimal);
      
      
       if(mousePressed == true) {
          fileChoice = "ClipArt1_10Filtered.csv";
          background(black);
          delay(250);
          sequence = 3;
  }
  
overMessageThree = false;

}

}
