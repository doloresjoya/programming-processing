size(800,800);
pixelDensity(2);

PFont f1, f2;
f1 = loadFont("Didot-48.vlw");
f2 = loadFont("Didot-Italic-48.vlw");
textFont(f1);
line(250, 0, 250, 800);
String lines = "L1 L2 L3";
textLeading(10);
fill(255, 124, 345);
text(lines, 50, 15, 30, 100);
textLeading(20);
text(lines, 0, 400);
text(22, 0, 70);
text("FRA", 0, 100);
String s = "Response if the medium";
textFont(f2);
text(s, 10, 20, width, height);
textSize(60);
fill(0);
text("DAY", 250, 240);
text("1", 100, 380);

char c = 'U';
float cw = textWidth(c);
text(c, 22, 40);
rect(22, 42, cw, 5);

String k = "DOLORES";
float kw = textWidth(k);
text(k, 122, 76);
rect(122,78, kw, 5);