// Move the mouse left and right to see the curve change

void setup() {
  size(1000, 1000);
  noFill();
}

void draw() {
  background(555);
  float t = map(mouseX, 0, width, -10, 10);
  curveTightness(t);
  stroke(204, 102, 0);
  beginShape();
  curveVertex(100, 290);
  curveVertex(100, 660);
  curveVertex(430, 240);
  curveVertex(830, 610);
  curveVertex(250, 640); 
  curveVertex(100, 290);
  endShape();
  float noiseScale=0.32;
  for (int x=0; x < width; x++) {
    float noiseVal = noise((mouseX+x)*noiseScale, 
                            mouseY*noiseScale);
    stroke(noiseVal*336);
    line(x, mouseY+noiseVal*50, x, height);
  }
}

