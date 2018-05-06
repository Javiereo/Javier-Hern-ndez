class Bola{
 PVector pos;
 float mass;
 PVector mov;
 PVector wind;
 //PVector force;
 PVector acceleration;
 PVector gravity;
 int tamanio, topspeed=50;
 
 Bola(){
   pos=new PVector(random(10, 900)+mass, random(10, 700)+mass);
   //force=new PVector(1, 0);
   wind=new PVector(1, 0);
   acceleration=new PVector(0, 0);
   mov=new PVector(10, 0);
   
   mass=random(10, 200);
 }
 
 void display(){
   noStroke();
   fill(pos.x-255, pos.y-255, 40);
   ellipse(pos.x, pos.y, mass, mass);
 }
 
 void applyForce(PVector force){
   PVector f=force.get();
   f.div(mass);
   acceleration.add(f);
 }
 
 void update(){
   pos.add(mov);
   mov.add(acceleration);
   mov.limit(topspeed);
 }
 
 void mover(){
   pos.add(mov);
 }
 
 void limites(){
   if(pos.x>=width){
     mov.x*=-1;
   }
   if(pos.x<=0 ){
     mov.x*=-1;
   }
   if(pos.y>=height){
     mov.y*=-1;
   }
   if(pos.y<=0 ){
     mov.y*=-1;
   }
 }
 
}

