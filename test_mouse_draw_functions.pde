//This sketch breaks down basic drawing functionality - works with mouse but not as well with touch
//This version adds the ability to save the image you have drawn

color redC= color(255, 0, 0);
float masterStroke= 7;
PFont thatfont; //sets up font for onscreen text
int dragX, dragY, moveX, moveY, oldX, oldY; //from mouse drag and move demo project
String buttontext = "erase";
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
  textFont(thatfont, 10);
  fill(0);
  rect(25, 25, 50, 50);  //this is the erase screen button
  fill(255);
  textAlign (CENTER,CENTER);
  text(buttontext, 50, 50);
  fill(0);
  rect(25, 80, 50, 50); //this is the save image button
  fill(255);
  textAlign (CENTER,CENTER);
  text("save", 50, 105);
  



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
  if (mouseX > 25 && mouseX < 75){
      if (mouseY>80 && mouseY <130){
        save("screencapture.jpg"); //this seems to save here: file:///C:/Users/mhaleygo/Documents/Processing/test_mouse_draw_functions/screencapture.jpg
        fill(255); //fill for comment text
        text("Comment Saved",600,500);//this doesn't seem to be working
        background (0);
        }
  }
}
  
