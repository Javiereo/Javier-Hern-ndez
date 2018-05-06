Gravity [] grav;


void setup(){
  size(1000, 800);
  
  grav=new Gravity[2];
  
  for(int i=0 ; i<grav.length ; i++){
    grav[i]=new Gravity();
  }
}

void draw(){
  background(0);
  
  for(int i=0 ; i<grav.length ; i++){
    float m=grav[i].mass;
    PVector b=new PVector(0, 0.09*m);
    grav[i].display();
    grav[i].applyForce(b);
    grav[i].mover();
    grav[i].rebote();
    grav[i].update();
  }
  
}
