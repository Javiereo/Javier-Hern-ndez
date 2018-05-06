Pelot [] p=new Pelot[4];

void setup(){
  size(1000, 800);
  
  for(int i=0 ; i<p.length ; i++){
    p[i]=new Pelot();
  }
  
}

void draw(){
  background(255);
  
  for(int i=0 ; i<4 ; i++){
    p[i].display();
    p[i].mover();
    p[i].limites();
  }
}
