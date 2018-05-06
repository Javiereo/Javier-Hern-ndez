Cannon can;
Dispar shoot;
Piso pis;
 
void setup(){
  size(500,500);
  
  can=new Cannon();
  shoot=new Dispar(); 
  pis=new Piso();
}

void draw(){
  background(250);
  
  pis.display();
  
  can.display();
  can.mov();
  
  shoot.display();
  shoot.disparo();
  
  
}
