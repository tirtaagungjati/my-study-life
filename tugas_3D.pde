boolean rotateX = false;
boolean rotateY = false;
boolean rotateZ = false;
int posisi_awal = 0;
int pergeseran = 5;

void setup(){
  size(1440,900,P3D);
}
void draw(){
  background(0);
  lights();
  translate(width/2, height/2);
  stroke(255,255,0);
  
  pushMatrix();
    if(rotateX){
      // Roll
      rotateX(radians(posisi_awal));
    }
    if(rotateY){
      // Pitch
      rotateY(radians(posisi_awal));
    }
    if(rotateZ){
      // Yaw
      rotateZ(radians(posisi_awal));
    }
    posisi_awal += pergeseran;

    if (posisi_awal < 0){
      pergeseran = -pergeseran;
      posisi_awal += pergeseran;
    }
    box(300);
  popMatrix();

}


void keyPressed(){
  if(key == 'x'){
    rotateX = true;
  }
  if(key == 'y'){
    rotateY = true;
  }
  if(key == 'z'){
    rotateZ = true;
  }
}

void keyReleased(){
  if(key == 'x'){
    rotateX = false;
  }
  if(key == 'y'){
    rotateY = false;
  }
  if(key == 'z'){
    rotateZ = false;
  }
}
