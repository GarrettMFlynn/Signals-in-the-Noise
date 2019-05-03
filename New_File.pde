void NewFile(){
  if (signal == true){
  sequence = 4;
  signal = false;
  macroIter = 0;
  iterInFrame = 0;
}
delay(1000);
}
