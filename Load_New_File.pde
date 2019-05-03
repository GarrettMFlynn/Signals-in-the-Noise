void LoadNewFile(){
  table = loadTable(fileChoice);
  numChannels = table.getRowCount(); // Max # of Channels = 10
  numDataPoints = table.getColumnCount();
  numIterations = numDataPoints/framesize;
  iterPerFrame = floor(framesize/chunk);
  
  pop = new SoundFile(this, soundChoice);
  pop.amp(1);
  sequence = 4;
  
  
  

for (int r = 0; r < 1000; r++) {
baseline0 = baseline0 + table.getInt(0,(90*r+baseColumn));
baseline1 = baseline1 + table.getInt(1,(90*r+baseColumn));
baseline2 = baseline2 + table.getInt(2,(90*r+baseColumn));
baseline3 = baseline3 + table.getInt(3,(90*r+baseColumn));
if (numChannels > 4) { 
baseline4 = baseline4 + table.getInt(4,(90*r+baseColumn));
baseline5 = baseline5 + table.getInt(5,(90*r+baseColumn));
baseline6 = baseline6 + table.getInt(6,(90*r+baseColumn));
baseline7 = baseline7 + table.getInt(7,(90*r+baseColumn));
baseline8 = baseline8 + table.getInt(8,(90*r+baseColumn));
baseline9 = baseline9 + table.getInt(9,(90*r+baseColumn));
}
basecount = basecount + 1;
}

// Average Values to Get a Baseline for Each
baseline0 = baseline0/basecount;
baseline1 = baseline1/basecount;
baseline2 = baseline2/basecount;
baseline3 = baseline3/basecount;
baseline4 = baseline4/basecount;
baseline5 = baseline5/basecount;
baseline6 = baseline6/basecount;
baseline7 = baseline7/basecount;
baseline8 = baseline8/basecount;
baseline9 = baseline9/basecount;



 return;
  
}
