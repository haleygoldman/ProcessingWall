//attempt to adjust mouse drawing to work with touch screen drawing

float oldX;
float oldY;
float masterStroke= 7;
int dragX, dragY, moveX, moveY; //from mouse drag and move demo project


void setup(){
  size(1200,700);
  smooth();
  background(0);
 
}
void draw(){
  stroke (255);
  fill(255); //color for the text
  ellipse(moveX, moveY, 25, 25); // Black circle from mouse drag/move demo
  fill(0); //ellipse fill color
    fill(0);
 
}
/*
  //attempting to use the drag function to make a line
    if (mouseDragged){
      line(dragX, dragY, oldX, oldY);
      }
        {  
   oldX=dragX;
   oldY=dragY;
  }
*/



  // this section works - more or less drawing with the elipse
  void mouseMoved(){
    moveX = mouseX;
    moveY = mouseY;
    }
    
 /*  {  
     oldX=moveX;
     oldY=moveY;
    }
*/