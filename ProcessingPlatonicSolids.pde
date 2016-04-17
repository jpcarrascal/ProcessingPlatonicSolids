Icosahedron ico;
Tetrahedron tet;
Octahedron oct;
Dodecahedron dod;
Hexahedron hex;

void setup(){
  size(300, 600, P3D);
  ico = new Icosahedron(30,2);
  tet = new Tetrahedron(30,2);
  oct = new Octahedron(30,2);
  dod = new Dodecahedron(30,2);
  hex = new Hexahedron(30,2);
  hint(DISABLE_DEPTH_TEST);
}

void draw(){
  background(0);
  lights();
  stroke(0, 255, 255);
  fill(0, 255, 255, 100);

  pushMatrix();
  translate(width/2,100,0);
  rotateX(mouseY/100.);
  rotateY(mouseX/100.);
  tet.create();
  popMatrix();
  
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
