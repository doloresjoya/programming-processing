 void setup(){
  size(800,800);
  background(255);
  //fullScreen(P3D, 1); //full screen on 1, or 2 monitor
  pixelDensity(2); // for retina displays
}

void draw(){
  colorMode(HSB);
  smooth();
  for(int i = 0; i < 800; i++){
      for(int j = 0; j < 800; j++){
        stroke(132, j*2.5, i*2.5);
        point(i, j);
        }  
      }    
      
   char letter = 'A';
   for(int i = 0; i < 26; i++){
     print(letter);
     letter++;
   }
   println('.');
   
   int i = 2;
   int j = 3;
   float f1 = i/j;
   float f2 = i/float(j);
   println(f2);
   
   float f = 65.3;
   int l = int(f);
   char c = 'E';
   l = int(c);
   println(l);
   
   String s1 = "Player Piano";
   String s2 = "P";
   println(s1.length());
   println(s2.length());
   println(s2.length() + s1.length());
   
   String t1 = "Apples, Oranges, Grapes, Cherries";
   println(t1.startsWith("A"));
   println(t1.startsWith("Oranges"));
   println(t1.endsWith("Cherries"));
   
   String s = "Azzurro";
   char[] v = s.toCharArray();
   println(s.substring(3));
   println(v[1]);
   println(s.substring(0, s.length()-1));
   
   int k = 12;
   char w = char(k);
   println(w);
  }   