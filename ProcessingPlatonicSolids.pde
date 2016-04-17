Icosahedron ico;
Tetrahedron tet;
Octahedron oct;
Dodecahedron dod;
Hexahedron hex;

void setup(){
  size(300, 600, P3D);
  tet = new Tetrahedron(30,10,true);
  hex = new Hexahedron(30,2,false);
  oct = new Octahedron(30,2,true);
  dod = new Dodecahedron(30,1,true);
  ico = new Icosahedron(30,0,true);
  hint(DISABLE_DEPTH_TEST);
}

void draw(){
  background(0);
  lights();
  stroke(0, 255, 255, 0);
  fill(0, 255, 255, 100);
  
  //stroke(255,0,0,100);
  pushMatrix();
  translate(width/2,100,0);
  rotateX(mouseY/100.);
  rotateY(mouseX/100.);
  tet.create();
  popMatrix();
  
  stroke(0, 255, 255, 100);
  pushMatrix();
  translate(width/2,200,0);
  rotateX(mouseY/100.);
  rotateY(mouseX/100.);
  hex.create();
  popMatrix();

  pushMatrix();
  translate(width/2,300,0);
  rotateX(mouseY/100.);
  rotateY(mouseX/100.);
  oct.create();
  popMatrix();

  stroke(0, 255, 255, 0);
  pushMatrix();
  translate(width/2,400,0);
  rotateX(mouseY/100.);
  rotateY(mouseX/100.);
  dod.create();
  popMatrix();

  pushMatrix();
  translate(width/2,500,0);
  rotateX(mouseY/100.);
  rotateY(mouseX/100.);
  ico.create();
  popMatrix();

}