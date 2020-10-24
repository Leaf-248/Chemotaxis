Bacteria [] bob;

void setup(){
    size(400, 400);
    bob = new Bacteria[500];
    
    for(int i = 0; i < bob.length; i++) {
        bob[i] = new Bacteria();
    }
}

void draw(){
    background(255); 
    
    for (int i = 0; i < bob.length; i++) {
        bob[i].walk();
        bob[i].show();     
    }
}

class Bacteria {
    int myX, myY;
    int r,g,b;
    
    Bacteria(){
        myX = 150;
        myY = 150;
        r = (int)(Math.random()*256); 
        g = (int)(Math.random()*256); 
        b = (int)(Math.random()*256); 
    }
    
    void walk() {
        if(mouseX > myX)
            myX = myX + (int)(Math.random()*5)-1;
        else
            myX = myX + (int)(Math.random()*7)-5;
     
        if(mouseY > myY)
            myY = myY + (int)(Math.random()*5)-1;
        else
            myY = myY + (int)(Math.random()*7)-5;
    }
    
    void show(){  
      noStroke();
        fill(r,g,b);
        ellipse(myX, myY, 4, 4);
    }
    
}
