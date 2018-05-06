Rect line;
tria tri;
pelota pelot;
PVector f;

void setup(){
  size(1000, 800);
  
  line=new Rect();
  tri=new tria();
  pelot=new pelota();
  
  f=new PVector(0, 5);
  
  ellipse(0, height/2, 50, 50);
}

void draw(){
  background(255);
  
  line.display();
  line.mov();
  line.applyForce(f);
  
  tri.display();
  
  pelot.display();
  pelot.move();
  pelot.applyForce(f);
  
}
