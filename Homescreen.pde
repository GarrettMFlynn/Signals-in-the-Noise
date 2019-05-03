void Homescreen() {
  background(black);
  textSize(.9*header);
  textAlign(CENTER);
  fill(white);
  text("Signals in the Noise", width/2, height/2);
  textSize(body);
  text("Click Here to Begin", width/2, (height/2)+verticalSpacing);
  
  if ((mousePressed == true) && (sequence == 1)) {
    delay(250);
    sequence = sequence + 1;
    }
}
