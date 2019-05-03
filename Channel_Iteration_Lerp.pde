void ChannelIterationLerp() {
// Iterate Through Each Channel for Each Chunk
translate(tDimX,tDimY);
scale(sDimX,sDimY);
signal = false; // Signal when Current File Has Ended
yespop = false;

baseColumn = (macroIter*iterPerFrame*chunk) + (iterInFrame*chunk);
if ((i+baseColumn) == numDataPoints-1) {
signal = true;
return;
}

int[] maxVals = new int[numChannels];
int[] xPos = new int[numChannels];
int[] numbersLineOne = new int[chunk];
float y1 = 0;
float y2 = 0;

for (int i = 1; i <= (chunk);i++){
  
    stroke(colors[0]);
    strokeWeight(5);
    line((i+(chunk*iterInFrame)), table.getInt(0,(i+baseColumn)) - baseline0,(i+(chunk*iterInFrame)), table.getInt(0,(i+baseColumn-1)) - baseline0);
    numbersLineOne[i-1] = table.getInt(0,(i+baseColumn-1)) - baseline0;
    if (numbersLineOne[i-1] > maxVals[0]) {
      maxVals[0] = numbersLineOne[i-1];
      xPos[0] = (i+(chunk*iterInFrame)-1);
      }
      
    if (maxVals[0] > filterVal) {
    noStroke();
    fill(colors[0]);
    rect(xPos[0], popHeight-popDecrement, popSize,popSize*5);
}}
    
  if (numChannels > 1){
   int[] numbersLineTwo = new int[chunk];
   for (int i = 1; i <= (chunk);i++){
    
    stroke(colors[1]);
    line((i+(chunk*iterInFrame)), table.getInt(1,(i+baseColumn)) - baseline1,(i+(chunk*iterInFrame)), table.getInt(1,(i+baseColumn-1)) - baseline1);
    numbersLineTwo[i-1] = table.getInt(1,(i+baseColumn-1)) - baseline1;
    if (numbersLineTwo[i-1] >maxVals[1]) {
      maxVals[1] = numbersLineTwo[i-1];
      xPos[1] = (i+(chunk*iterInFrame)-1);
    }
    
    if (maxVals[1] > filterVal) {
    noStroke();
    fill(colors[1]);
    rect(xPos[1], popHeight-2*popDecrement, popSize,popSize*5);
}}
}
  
  if (numChannels > 2){
   int[] numbersLineThree = new int[chunk];
   for (int i = 1; i <= (chunk);i++){
    
    stroke(colors[2]);
    line((i+(chunk*iterInFrame)), table.getInt(2,(i+baseColumn)) - baseline2,(i+(chunk*iterInFrame)), table.getInt(2,(i+baseColumn-1)) - baseline2);
    numbersLineThree[i-1] = table.getInt(2,(i+baseColumn-1)) - baseline2;
    if (numbersLineThree[i-1] >maxVals[2]) {
      maxVals[2] = numbersLineThree[i-1];
      xPos[2] = (i+(chunk*iterInFrame)-1);
    }    
    if (maxVals[2] > filterVal) {
    noStroke();
    fill(colors[2]);
    rect(xPos[2], popHeight-3*popDecrement, popSize,popSize*5);
    yespop = true;
}}

}

  if (numChannels > 3){
   int[] numbersLineFour = new int[chunk];
   for (int i = 1; i <= (chunk);i++){
    
    stroke(colors[3]);
    line((i+(chunk*iterInFrame)), table.getInt(3,(i+baseColumn)) - baseline3,(i+(chunk*iterInFrame)), table.getInt(3,(i+baseColumn-1)) - baseline3);
    numbersLineFour[i-1] = table.getInt(3,(i+baseColumn-1)) - baseline3;
    if (numbersLineFour[i-1] >maxVals[3]) {
      maxVals[3] = numbersLineFour[i-1];
      xPos[3] = (i+(chunk*iterInFrame)-1);
    }    
    if (maxVals[3] > filterVal) {
    noStroke();
    fill(colors[3]);
    rect(xPos[3], popHeight-4*popDecrement, popSize,popSize*5);
    yespop = true;
}}}
    
  if (numChannels > 4){
   int[] numbersLineFive = new int[chunk];
   for (int i = 1; i <= (chunk);i++){
    
    stroke(colors[4]);
    line((i+(chunk*iterInFrame)), table.getInt(4,(i+baseColumn)) - baseline4,(i+(chunk*iterInFrame)), table.getInt(4,(i+baseColumn-1)) - baseline4);
    numbersLineFive[i-1] = table.getInt(4,(i+baseColumn-1)) - baseline4;
    if (numbersLineFive[i-1] >maxVals[4]) {
      maxVals[4] = numbersLineFive[i-1];
      xPos[4] = (i+(chunk*iterInFrame)-1);
    }    
    if (maxVals[4] > filterVal) {
    noStroke();
    fill(colors[4]);
    rect(xPos[4], popHeight-(5*popDecrement), popSize,popSize*5);
    yespop = true;
}}}
    
  if (numChannels > 5){
   int[] numbersLineSix = new int[chunk];
   for (int i = 1; i <= (chunk);i++){
    
    stroke(colors[5]);
    line((i+(chunk*iterInFrame)), table.getInt(5,(i+baseColumn)) - baseline5,(i+(chunk*iterInFrame)), table.getInt(5,(i+baseColumn-1)) - baseline5);
    numbersLineSix[i-1] = table.getInt(5,(i+baseColumn-1)) - baseline5;
    if (numbersLineSix[i-1] >maxVals[5]) {
      maxVals[5] = numbersLineSix[i-1];
      xPos[5] = (i+(chunk*iterInFrame)-1);
    }    
    if (maxVals[5] > filterVal) {
    noStroke();
    fill(colors[5]);
    rect(xPos[5], popHeight-(6*popDecrement), popSize,popSize*5);
    yespop = true;
}}}
    
  if (numChannels > 6){  
   int[] numbersLineSeven = new int[chunk];
   for (int i = 1; i <= (chunk);i++){
    
    stroke(colors[6]);
    line((i+(chunk*iterInFrame)), table.getInt(6,(i+baseColumn)) - baseline6,(i+(chunk*iterInFrame)), table.getInt(6,(i+baseColumn-1)) - baseline6);
    numbersLineSeven[i-1] = table.getInt(6,(i+baseColumn-1)) - baseline6;
    if (numbersLineSeven[i-1] >maxVals[6]) {
      maxVals[6] = numbersLineSeven[i-1];
      xPos[6] = (i+(chunk*iterInFrame)-1);
    }
    if (maxVals[6] > filterVal) {
    noStroke();
    fill(colors[6]);
    rect(xPos[6], popHeight-(7*popDecrement), popSize,popSize*5);
    yespop = true;
}}}
    
  if (numChannels > 7){
   int[] numbersLineEight = new int[chunk];
   for (int i = 1; i <= (chunk);i++){
    
    stroke(colors[7]);
    line((i+(chunk*iterInFrame)), table.getInt(7,(i+baseColumn)) - baseline7,(i+(chunk*iterInFrame)), table.getInt(7,(i+baseColumn-1)) - baseline7);
    numbersLineEight[i-1] = table.getInt(7,(i+baseColumn-1)) - baseline7;
    if (numbersLineEight[i-1] >maxVals[7]) {
      maxVals[7] = numbersLineEight[i-1];
      xPos[7] = (i+(chunk*iterInFrame)-1);
    }
    if (maxVals[7] > filterVal) {
    noStroke();
    fill(colors[7]);
    rect(xPos[7], popHeight-(8*popDecrement), popSize,popSize*5);
    yespop = true;
}}}
    
  if (numChannels > 8){  
   int[] numbersLineNine = new int[chunk];
   for (int i = 1; i <= (chunk);i++){
    stroke(colors[8]);
    line((i+(chunk*iterInFrame)), table.getInt(8,(i+baseColumn)) - baseline8,(i+(chunk*iterInFrame)), table.getInt(8,(i+baseColumn-1)) - baseline8);
    numbersLineNine[i-1] = table.getInt(8,(i+baseColumn-1)) - baseline8;
    if (numbersLineNine[i-1] > maxVals[8]) {
      maxVals[8] = numbersLineNine[i-1];
      xPos[8] = (i+(chunk*iterInFrame)-1);
    }    
    if (maxVals[8] > filterVal) {
    noStroke();
    fill(colors[8]);
    rect(xPos[8], popHeight-(9*popDecrement), popSize,popSize*5);
    yespop = true;
}}}
    
  if (numChannels > 9){
   int[] numbersLineTen = new int[chunk];
   for (int i = 1; i <= (chunk);i++){
    stroke(colors[9]);
    line((i+(chunk*iterInFrame)), table.getInt(9,(i+baseColumn)) - baseline9,(i+(chunk*iterInFrame)), table.getInt(9,(i+baseColumn-1)) - baseline9);
    numbersLineTen[i-1] = table.getInt(9,(i+baseColumn-1)) - baseline9;
    if (numbersLineTen[i-1] >maxVals[9]) {
      maxVals[9] = numbersLineTen[i-1];
      xPos[9] = (i+(chunk*iterInFrame)-1);
    }
    if (maxVals[9] > filterVal) {
    noStroke();
    fill(colors[9]);
    rect(xPos[9], popHeight-(10*popDecrement), popSize,popSize*5);
    yespop = true;
}}}
iterInFrame = iterInFrame + 1;

}
