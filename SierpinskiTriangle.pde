int i=0;
public void setup()
{
size(500,500);

}
public void draw()
{

background(0);
fill(i,85,25);
sierpinski(100,350,300);
}
public void mouseDragged()//optional
{
if(mousePressed)
i=i+10;
}
public void sierpinski(int x, int y, int len) 
{
if (len<=20)
{

triangle(x,y,x+len/2,y-len,x+len,y);
}
else 
{
sierpinski(x,y,len/2);
sierpinski(x+len/2,y,len/2);
sierpinski(x+len/4,y-len/2,len/2);
}
}