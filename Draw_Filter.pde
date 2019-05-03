void DrawFilter(){
// Draw Filter + Display Initial Height
fill(black);
rectMode(CENTER);
stroke(white);
rect(width/2,0,300,300);
fill(white);
textAlign(CENTER,TOP);
textSize(.5*body);
text("Voltage Filter Height", width/2, 1.2 * verticalSpacing);
textSize(.66 * header);
text(filterVal, width/2, 0);
textSize(.5*body);
textAlign(LEFT,BOTTOM);
text("Press Enter to Do Something Else", 5, height);


pushMatrix();
translate(tDimX,tDimY);
scale((1/sDimX),(1/sDimY));
stroke(white);
strokeWeight(filterWeight);
line(0, sDimY * (sDimY)*filterheight, width, (sDimY)*(sDimY)*filterheight); 
popMatrix();

return;


}
