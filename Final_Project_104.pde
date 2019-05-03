// Garrett Flynn
// Final Project
/* 
Hippocampal Data from Song Lab at USC
*/


// Global Settings
//

// Scaling
int memoryImageScaling = 2;

    // Note: This Section Contains Duplicate Information for Window Sizing; If Changes are Made, Please Also Change SETUP Parameters
int dimX = 1400;
int dimY= 800;


// Multimedia Components
import processing.sound.*;
SoundFile pop;

Table table;
boolean centered;
int clickOccur = 0;
int noKeyPressed = 0;
int sequence = 1;


// Translate & Scale Factors
float tDimX = 0;
float tDimY = (dimY/2);
float sDimX = .05;
float sDimY = -.03;

// Graphing
float filterWeight = .05;
int dataWeight = 1;

int baseline0 = 0;
int baseline1 = 0;
int baseline2 = 0;
int baseline3 = 0;
int baseline4 = 0;
int baseline5 = 0;
int baseline6 = 0;
int baseline7 = 0;
int baseline8 = 0;
int baseline9 = 0;
int basecount = 0;




int i = 0;
int chunk = 400; // Bin Size for Line Drawing
int initialPlotX = 100;

int extraIndex = 0;
int iterInFrame = 0;
int macroIter = 0;
int chunkNumber = 1;
int nextChunkEnd = chunk;


int baseColumn = 0;
int framesize = 24000; // How Far Across the Window You Want The Line to Draw
float popSize = -(2/sDimY); // Size of Spike Markers
int popHeight = 135*height; // Y-Position of Spike Markers
float popDecrement = 5*popSize;
int row = 0;

// Spike Filter
int filterheight = 2500; // Initial Height of Spike Filter
int filterVal = filterheight;
int filterLineLeft = 25000;
int filterLineRight = 30000;

// Currently With No Use
float averageSlope = 0;
float newsoundval = .1;

/* Example Linear Interpolation Code
    y1 = lerp(table.getInt(0,(i+baseColumn-1))- baseline0, table.getInt(0,(i+baseColumn)) - baseline0, 0.5);
    y2 = lerp(table.getInt(0,(i+baseColumn)) - baseline0, table.getInt(0,(i+baseColumn+1))- baseline0, 0.5);
    line((i+(chunk*iterInFrame)), y1,(i+(chunk*iterInFrame)), y2);
*/


// Color
color black = #000000;
color white = #FFFFFF;
color red = #FF0000;
color orange = #FF9100;
color yellow = #FEFF00; 
color lime = #2DFF00;
color blue = #001BFF;
color purple = #9800FF;
color pink = #FF00E6; 
color cyan = #00E3FF;
color green = #008B2B;
color brown = #8B4600;
color[] colors  = {  
  red, orange, yellow, green, blue, purple, cyan, pink, lime, brown};


// Text
int header = 150;
int subheader = 60;
int body = 40;
int verticalSpacing = 100;
int verticalSpacingExtra = 150;
int verticalSpacingMinimal = 50;

// Masking Rectangles
float rectFactorResponsive = .3;
int rectWidth = 1000;
int rectHeight = 80;


// Sound
String soundChoice = "Pop.mp3"; // Default Spike Sound
boolean yespop = false;


// Data Files
String fileChoice = "ClipArt1_4Channels.csv"; // Default

// For Dynamic Allocation
  int numChannels = 9; // Max # of Channels = 10
  int numDataPoints = 0;
  int numIterations = 0;
  int iterPerFrame = 0;
  boolean signal = false;

// For Images
PImage img0;
PImage img1;
PImage img2;
PImage img3;
PImage img4;
PImage img5;
PImage img6;
PImage img7;
PImage img8;
PImage img9;
PImage[] imageVec;

float starttint0 = 0;
float starttint1 = 0;
float starttint2 = 0;
float starttint3 = 0;
float starttint4 = 0;
float starttint5 = 0;
float starttint6 = 0;
float starttint7 = 0;
float starttint8 = 0;
float starttint9 = 0;
float counttints = 0;

// Initialize Window
void setup() {
  background(black);
  size(1400,800);
  imageVec = new PImage[] {loadImage("tee.png"), loadImage("crayon.png"), loadImage("bee.png"), loadImage("sunny.png"), loadImage("money.png"), loadImage("chips.png"), loadImage("church.png"), loadImage("elephant.png"), loadImage("peeps.png"), loadImage("pig.png")};
  img0 = loadImage("tee.png");
}

void draw() {
if (sequence == 1){
Homescreen();
return;
}


if (sequence == 2) {
ChooseFile();
return;
}

if (sequence == 3) {
LoadNewFile();
return;
}

if (sequence == 4) {
ChooseOption();
return;
}

if (sequence == 6){
ResetDrawing();
DrawFilter();
ChannelIterationLerp();
NewFile();

if ((yespop == true)){
pop.play();
}

  if (keyCode == UP){
    filterheight = filterheight + 1;
  }
  if (keyCode == DOWN){
    filterheight = filterheight - 1;
  }
  
return;
}


// Memory Vizualization Section

if (sequence == 32) {
NewFile();
ResetDrawing();
DrawFilter();
MemoryViz();

if ((yespop == true)){
pop.play();
}

return;
}

}

void keyPressed() {
  if (keyCode == UP){
    filterVal = filterVal + 10;
  }
  if (keyCode == DOWN){
    filterVal = filterVal - 10;
  }
  
  if ((sequence == 4)){
       delay(250);
       sequence = 2;
  }
  
    if (keyCode == ENTER){
      if ((sequence == 6) || (sequence == 32)){
       delay(250);
       sequence = 4;
       baseColumn = 0;
       macroIter = 0;
       iterInFrame = 0;
  }
}
}
