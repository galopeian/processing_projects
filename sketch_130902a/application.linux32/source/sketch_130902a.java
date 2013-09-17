import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class sketch_130902a extends PApplet {

int barWidth = 10;
int lastBar = -1;
public void setup() {
       size(600, 600);
       colorMode(HSB, height, height, height);  
       stroke(255);
       background(292, 64, 0);
     } 

     public void draw() {
       line(150, 125, mouseX, mouseY);
       int whichBar = mouseX / barWidth;
  if (whichBar != lastBar) {
    int barX = whichBar * barWidth;
    fill(mouseY, height, height);
    rect(barX, 0, barWidth, height);
    lastBar = whichBar;
     
   }
   }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "sketch_130902a" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
