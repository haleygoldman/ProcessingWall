//This sketch breaks down basic drawing functionality - works with mouse but not as well with touch

color redC= color(255, 0, 0);
float masterStroke= 7;
PFont thatfont; //sets up font for onscreen text
int dragX, dragY, moveX, moveY, oldX, oldY; //from mouse drag and move demo project
String buttontext = "Click to add a comment";
int comparisonX, comparisonY; //looking for a way to compare the current x to the previous x

 
 
void setup(){
  size(1200,700);
  smooth();
  background(0);
  thatfont = createFont("Arial",16,true); // selects the font for onscreen text as Arial, 16 point, anti-aliasing on;
   
}
void draw(){
  textFont(thatfont,36); //calls the text font that we mentioned in setup and sets the size
  stroke (255);
  fill(255); //color for the text
  textAlign (CENTER,CENTER);
  text("Here is the test prompt",600,350); //this would be the prompt followed by x,y coordinates
  ellipse(dragX, dragY, 10, 10); // Black circle from mouse drag/move demo
  fill(153); //ellipse fill color
  rect(500,400,100,50);
  fill(153); //ellipse fill color
  textFont(thatfont, 10);
    fill(0);
  text(buttontext, 550, 420);
  rect(25, 25, 50, 50);
  



//this section works if you use a mouse but with a touch screen doesn't recognize jumps between lines
//original used the oldX, oldY variables - I've changed them here to pmouseX, pmouseY - which seem to do the same thing without having to set variables

  if(mousePressed){
   comparisonX = (abs(mouseX - pmouseX));
   comparisonY = (abs(mouseY - pmouseY));
  //This next line was used for monitoring purposes
  //print (comparisonX + ";"+comparisonY + "////");
  if (comparisonX>40 || comparisonY>40){
   //the number used here subtly modifies the responsiveness of the system 25 seems to work ok.  Higher number seem better but sometimes create odd images.
    noStroke();
    }
   line(mouseX, mouseY, pmouseX, pmouseY );
   }
 
 { 
  oldX=mouseX;
  oldY=mouseY;
  }

}
  
void mouseClicked() {
  //this part figures out if the mouse is over the square when clicked
  if(mouseX > 25 && mouseX < 75){
      if(mouseY >25 && mouseY < 75){
         background (0);
      }
  }  
}
  
/*
attempted to use noloop/loop functions to keep the touchscreen from connecting everything when the finger is lifted from the screen
void mousePressed() {
  loop();  // Holding down the mouse activates looping
}

void mouseReleased() {
  noLoop();  // Releasing the mouse stops looping draw()
}
*/