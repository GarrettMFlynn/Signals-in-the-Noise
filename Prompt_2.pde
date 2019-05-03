void Prompt2() {
 background(black);
 textAlign(CENTER,CENTER);
 fill(white);
 textSize(subheader);
 text("What Would You Like to Do with this File?", width/2, (height/2) - verticalSpacingExtra);
 textSize(body);
 text("Filter for Spikes", width/2, (height/2) - verticalSpacingMinimal);
 text("Visualize Memory Content", width/2, (height/2) + verticalSpacingMinimal);
 
 
 textSize(.5*body);
 textAlign(LEFT,BOTTOM);
 text("Press Enter to Choose Another File", 5, height);
}
