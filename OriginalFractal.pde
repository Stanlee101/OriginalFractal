public void setup(){
  size(500,500);
}

public void draw(){
  background(0);
  fill(0);
  stroke(255);
  strokeWeight(2);
  circles(250, 250, 350+grow, 350+grow);
}

int grow = 0;
public void keyPressed(){
  if (key == 'g'){
    grow += 10;
  }
  if (grow >= 1150){
    grow = 150;
  }
}

void circles(float ex, float ey, float size, float sizes){
  ellipse(ex, ey, size, sizes);
  if(size > 10){
    circles(ex, ey, size/3, sizes/3);
    circles(ex, ey-size/3, size/3, size/3);
    circles(ex-size/3,ey, size/3, size/3);
    circles(ex, ey+size/3, size/3, size/3);
    circles(ex+size/3, ey, size/3, size/3);
  }
}
