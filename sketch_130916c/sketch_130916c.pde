size(300, 300, P3D);
background(44);
noStroke();
beginCamera();
camera();
rotateX(-PI/6);
endCamera();
directionalLight(53, 53, 53, .5, 0, -5);
ambientLight(153, 102, 0);
ambient(51, 26, 0);
translate(70, 50, 0);
sphere(30);

noStroke();
directionalLight(73, 73, 73, .88, 0, -5);
ambientLight(45, 62, 0);
ambient(51, 26, 0);
translate(-50, 90, 0);
sphere(30);

