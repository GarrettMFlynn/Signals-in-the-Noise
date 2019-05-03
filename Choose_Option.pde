
void ChooseOption() {
 boolean overMessageOne = false;
 boolean overMessageTwo = false;
 rectMode(CENTER);
 textAlign(CENTER,CENTER);
 Prompt2();
  if ((mouseY >= height/2 -((1+rectFactorResponsive)*verticalSpacingMinimal)) && (pmouseY <= ((height/2) - ((1-rectFactorResponsive)*verticalSpacingMinimal))) && (sequence == 4)){
  overMessageOne = true;
  }
  
  if ((mouseY <= height/2 + ((1+rectFactorResponsive)*verticalSpacingMinimal)) && (pmouseY >= (height/2) + ((1-rectFactorResponsive)*verticalSpacingMinimal)) && (sequence == 4)){
  overMessageTwo = true;
  }
  
  while (overMessageOne == true){
      fill(white);
      noStroke();
      rect(width/2, (height/2)-(0.9*verticalSpacingMinimal), rectWidth,rectHeight);
      fill(black);
      textSize(body);
      textAlign(CENTER,CENTER);
      text("Filter for Spikes", width/2, (height/2) - verticalSpacingMinimal);
  
      if (mousePressed == true) {
          background(black);
          sequence = 6;
  }
  overMessageOne = false;
}
    while (overMessageTwo == true) {
      fill(white);
      noStroke();
      rect(width/2, (height/2)+(1.1*verticalSpacingMinimal), rectWidth,rectHeight);
      fill(black);
      textSize(body);
      textAlign(CENTER,CENTER);
      text("Visualize Memory Content", width/2, (height/2) + verticalSpacingMinimal);
      
      
       if(mousePressed == true) {
         background(black);
         sequence = 32;
  }
  
overMessageTwo = false;
    }

}
