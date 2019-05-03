// Reset Drawing to Left Side

void ResetDrawing(){
if (iterInFrame == iterPerFrame) {
  iterInFrame = 0;
  background(black);
  macroIter = macroIter + 1;
}
}
