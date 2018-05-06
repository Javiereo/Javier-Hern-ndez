Pelota [] p=new Pelota[30];

void setup(){
  size(1000, 800);

  for(int i=0 ; i<p.length ; i++){
    p[i]=new Pelota(random(0, height), 100, random(0, 15));
  }
  
}

void draw(){
  background(255);
  
  for(int i=0 ; i<p.length ; i++){
    p[i].display();
    p[i].mover();
  }
  
}
