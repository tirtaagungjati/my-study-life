boolean rotateX = false;
boolean rotateY = false;
boolean rotateZ = false;
int posisi_awal = 0;
int pergeseran = 2;

void setup(){
  size(1440,900,P3D);
}
void draw(){
  background(0);
  lights();
  translate(width/2, height/2);
  stroke(255);
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
  pushMatrix();
    fill(255);
    box(300);
  popMatrix();
  
  beginShape(QUADS);
  // mata kiri
  fill(153,76,0);
  vertex(-100, -100,  151);
  vertex(-45, -100,  151);
  vertex(-45,  -50,  151);
  vertex(-100,  -50,  151);
  endShape();
  
  beginShape(QUADS);
  // mata kanan
  fill(153,76,0);
  vertex(100, -100,  151);
  vertex(45, -100,  151);
  vertex(45,  -50,  151);
  vertex(100,  -50,  151);
  endShape();
  
  // Mulut
  beginShape(TRIANGLES);
  // mata kanan
  fill(153,76,0);
  vertex(0, 30,  151);
  vertex(-45, 90,  151);
  vertex(45,  90,  151);
  endShape();
  
  //TOPI
  stroke(0,0,255);
  beginShape(TRIANGLES);
  fill(#1801FF);
  vertex(0, -350,  0);
  vertex(-150, -150,  151);
  vertex(150,  -150,  151);
  endShape();
  
  beginShape(TRIANGLES);
  fill(#1801FF);
  vertex(0, -350,  0);
  vertex(-150, -150,  -151);
  vertex(-150,  -150,  151);
  endShape();
  
  beginShape(TRIANGLES);
  fill(#1801FF);
  vertex(0, -350,  0);
  vertex(150, -150,  -151);
  vertex(-150,  -150,  -151);
  endShape();
  
  beginShape(TRIANGLES);
  fill(#1801FF);
  vertex(0, -350,  0);
  vertex(150, -150,  151);
  vertex(150,  -150,  -151);
  endShape();
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
