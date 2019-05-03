void MemoryViz() {
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
    starttint0 = starttint0 + 1;
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
    starttint1 = starttint1 + 1;
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
    starttint2 = starttint2 + 1;
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
    starttint3 = starttint3 + 1;
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
    starttint4 = starttint4 + 1;
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
    starttint5 = starttint5 + 1;
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
    starttint6 = starttint6 + 1;
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
    starttint7 = starttint7 + 1;
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
    starttint8 = starttint8 + 1;
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
    starttint9 = starttint9 + 1;
}}}
iterInFrame = iterInFrame + 1;

translate(0,height);
scale(memoryImageScaling,-memoryImageScaling);
rectMode(CENTER);
noStroke();
fill(black);
counttints = starttint0 + starttint1 + starttint2 + starttint3 + starttint4 + starttint5 + starttint6 + starttint7 + starttint8 + starttint9;
float plotMax = 0;
int indexArray[] = new int[numChannels];
// So That You Can Actually See the Results
counttints = counttints/2;

// Make the Images Sort

PImage[] imageVec;
imageVec = new PImage[] {loadImage("tee.png"), loadImage("crayon.png"), loadImage("bee.png"), loadImage("sunny.png"), loadImage("money.png"), loadImage("chips.png"), loadImage("church.png"), loadImage("elephant.png"), loadImage("peeps.png"), loadImage("pig.png")};

float[] tints = {255*starttint0/(counttints),255*starttint1/(counttints),255*starttint2/(counttints),255*starttint3/(counttints),255*starttint4/(counttints),255*starttint5/(counttints),
255*starttint6/(counttints),255*starttint7/(counttints),255*starttint8/(counttints),255*starttint9/(counttints)};
float[] iterTints = {255*starttint0/(counttints),255*starttint1/(counttints),255*starttint2/(counttints),255*starttint3/(counttints),255*starttint4/(counttints),255*starttint5/(counttints),
255*starttint6/(counttints),255*starttint7/(counttints),255*starttint8/(counttints),255*starttint9/(counttints)};
for(int z = 0; z < numChannels; z++){
  plotMax = max(iterTints);
  for(int i = 0; i < numChannels; i++){
  if (tints[i] == plotMax){
  indexArray[z] = i;
  iterTints[i] = 0;
  }
  }
 }

rect((((1/sDimX)-.5)*width)/memoryImageScaling, 0, 2000, 100000);


tint(255, tints[indexArray[0]]); 
image(imageVec[indexArray[0]], (((1/sDimX)-(.75*memoryImageScaling))*width)/memoryImageScaling, -7.5*height);

tint(255, tints[indexArray[1]]); 
image(imageVec[indexArray[1]], (((1/sDimX)-(.75*memoryImageScaling))*width)/memoryImageScaling, -6*height);

tint(255, tints[indexArray[2]]); 
image(imageVec[indexArray[2]], (((1/sDimX)-(.75*memoryImageScaling))*width)/memoryImageScaling, -4.5*height);

tint(255, tints[indexArray[3]]); 
image(imageVec[indexArray[3]], (((1/sDimX)-(.75*memoryImageScaling))*width)/memoryImageScaling, -3*height);

if (numChannels > 4) { 
tint(255, tints[indexArray[4]]); 
image(imageVec[indexArray[4]], (((1/sDimX)-(.75*memoryImageScaling))*width)/memoryImageScaling, -1.5*height);

tint(255, tints[indexArray[5]]); 
image(imageVec[indexArray[5]], (((1/sDimX)-(.75*memoryImageScaling))*width)/memoryImageScaling, 0);

tint(255, tints[indexArray[6]]); 
image(imageVec[indexArray[6]], (((1/sDimX)-(.75*memoryImageScaling))*width)/memoryImageScaling, 1.5*height);

tint(255, tints[indexArray[7]]); 
image(imageVec[indexArray[7]], (((1/sDimX)-(.75*memoryImageScaling))*width)/memoryImageScaling, 3*height);
tint(255, tints[indexArray[8]]); 
image(imageVec[indexArray[8]], (((1/sDimX)-(.75*memoryImageScaling))*width)/memoryImageScaling, 4.5*height);
tint(255, tints[indexArray[9]]); 
image(imageVec[indexArray[9]], (((1/sDimX)-(.75*memoryImageScaling))*width)/memoryImageScaling, 6*height);
}
}
