void Prompt() {
 background(black);
 textAlign(CENTER,CENTER);
 fill(white);
 textSize(subheader);
 text("Which File Would You Like to Visualize?", width/2, (height/2) - verticalSpacingExtra);
 textSize(body);
 text("Memory Decoding — 4 Channels  (Raw)", width/2, (height/2) - verticalSpacingMinimal);
 text("Memory Decoding — 4 Channels  (Filtered)", width/2, (height/2) + verticalSpacingMinimal);
 text("Memory Decoding — 10 Channels (Filtered)", width/2, (height/2) + 3*verticalSpacingMinimal);
}
