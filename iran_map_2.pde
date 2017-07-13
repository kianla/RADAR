
PImage img;
String letters = "search"; 

PImage fai_iconi;
PGraphics fai_icong;
String fai_filename;

void frameAndIcon(String frameText, String iconFilename) {
  if ( fai_filename == null || !fai_filename.equals(iconFilename) ) {
    fai_iconi = loadImage(iconFilename);
    fai_icong = createGraphics(16, 16, JAVA2D);
    fai_filename = iconFilename;
  }
  frame.setTitle( frameText );
  fai_icong.beginDraw();
  fai_icong.image( fai_iconi, 0, 0 );
  fai_icong.endDraw();
  frame.setIconImage(fai_icong.image);
}
void setup()
{
  size(550, 509);
  textSize(15);
  textAlign(LEFT);
  img = loadImage("KI.jpg");
  background(img);
}

void draw()
{
  fill(#03FA04);
  rect(0, 450, 164, 24);
  fill(0);
  text(letters, 0, 450, 164, 20);
  if (mousePressed) {
    letters = "" ;
  }
}

void keyPressed() {
  println(letters);
  if (key == ENTER) {
    if (letters.equalsIgnoreCase("iran")) 
    {
      img = loadImage("KI.jpg");
    } else if (letters.equals("tehran")) 
    {
      img = loadImage("ii.jpg");
    } else if (letters.equals("azerbaijan gharby")) 
    {
      img = loadImage("ag.jpg");
    } else if (letters.equals("urmia")) 
    {
      img = loadImage("ur.jpg");
    } else if (letters.equals("azerbijan sharghi")) 
    {
      img = loadImage("az.jpg");
    } else if (letters.equals("ardebil")) 
    {
      img = loadImage("ar.jpg");
    } else if (letters.equals("khazar")) 
    {
      img = loadImage("kh.jpg");
    } else if (letters.equals("gilan")) 
    {
      img = loadImage("gi.jpg");
    } else if (letters.equals("zangan")) 
    {
      img = loadImage("Za.jpg");
    } else if (letters.equals("kordestan")) 
    {
      img = loadImage("ko.jpg");
    } else if (letters.equals("kermonshah")) 
    {
      img = loadImage("ke.jpg");
    } else if (letters.equals("hamedan")) 
    {
      img = loadImage("ha.jpg");
    } else if (letters.equals("ghazvin")) 
    {
      img = loadImage("ga.jpg");
    } else if (letters.equals("alborz")) 
    {
      img = loadImage("al.jpg");
    } else if (letters.equals("mazandaran")) 
    {
      img = loadImage("ma.jpg");
    } else if (letters.equals("golestan")) 
    {
      img = loadImage("go.jpg");
    } else if (letters.equals("khorasan shomaly")) 
    {
      img = loadImage("ks.jpg");
    } else if (letters.equals("khorasan razavi")) 
    {
      img = loadImage("kr.gif");
    } else if (letters.equals("khorasan jonoby")) 
    {
      img = loadImage("kj.jpg");
    } else if (letters.equals("yazd")) 
    {
      img = loadImage("y.jpg");
    } else if (letters.equals("semnan")) 
    {
      img = loadImage("se.jpg");
    } else if (letters.equals("isfahan")) 
    {
      img = loadImage("is.jpg");
    } else if (letters.equals("markazy")) 
    {
      img = loadImage("m.jpg");
    } else if (letters.equals("qom")) 
    {
      img = loadImage("g.jpg");
    } else if (letters.equals("lorestan")) 
    {
      img = loadImage("l.jpg");
    } else if (letters.equals("ilam")) 
    {
      img = loadImage("il.jpg");
    } else if (letters.equals("khoozestan")) 
    {
      img = loadImage("kho.jpg");
    } else if (letters.equals("chaharmahal va bakhtiari")) 
    {
      img = loadImage("ch.jpg");
    } else if (letters.equals("Kohgiluyeh va Boyer-Ahmad ")) 
    {
      img = loadImage("kb.jpg");
    } else if (letters.equals("fars")) 
    {
      img = loadImage("f.jpg");
    } else if (letters.equals("boshehr")) 
    {
      img = loadImage("bu.jpg");
    } else if (letters.equals("khalij a fars")) 
    {
      img = loadImage("kf.jpg");
    } else if (letters.equals("Hormozgan")) 
    {
      img = loadImage("ho.jpg");
    } else if (letters.equals("khalij oman")) 
    {
      img = loadImage("do.jpg");
    } else if (letters.equals("sistan va baluchestan")) 
    {
      img = loadImage("si.jpg");
    } else if (letters.equalsIgnoreCase("kerman")) 
    {
      img = loadImage("ker.jpg");
    }
    background(img);
  }
  {
    if (key == BACKSPACE) {
      if (letters.length() > 0) {
        letters = letters.substring(0, letters.length()-1);
      }
    } else if ((key > 64 && key < 91) || (key > 96 && key < 123)) {
      letters = letters + key;
    }
  }
}