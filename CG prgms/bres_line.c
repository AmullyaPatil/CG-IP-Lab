#define BLACK 0
#include <GL/glut.h>
#include<stdio.h>
void draw_pixel(int ix,int iy,int value)
{
glBegin(GL_POINTS);
glVertex2i(ix,iy);
glEnd();
}
void bres(int x1,int y1, int x2,int y2)
{
int dx,dy,i,e;
int incx,incy,inc1,inc2;
int x,y;
dx=x2-x1;
dy=y2-y1;
if(dx<0)dx=-dx;
if(dy<0)dy=-dy;
incx=1;
if(x2<x1)incx=-1;
incy=1;
if(y2<y1)incx=-1;
x=x1;
y=y1;
if(dx>dy)
{
draw_pixel(x,y,BLACK);
e=2*dy-dx;
inc1=2*(dy-dx);
inc2=2*dy;
for(i=0;i<dx;i++)
{
if(e>=0)
{
y+=incy;
e+=inc1;
}
else e+inc2;
x+=incx;
draw_pixel(x,y,BLACK);
}
}
else
{
draw_pixel(x,y,BLACK);
e=2*dx-dy;
inc1=2*(dx-dy);
inc2=2*dx;
for(i=0;i<dy;i++)
{
if(e>=0)
{
x+=incx;
e+=inc1;
}
else e+=inc2;
y+=incy;
draw_pixel(x,y,BLACK);
}
}
}
void display()
{
glClear(GL_COLOR_BUFFER_BIT);
bres(200,200,100,50);
glFlush();
}
void myinit()
{
glClearColor(1.0,1.0,1.0,1.0);
glColor3f(1.0,0.0,0.0);
glPointSize(1.0);
glMatrixMode(GL_PROJECTION);
glLoadIdentity();
gluOrtho2D(0,499.0,0,499.0);
}
void main(int argc,char **argv)
{
glutInit(&argc,argv);
glutInitDisplayMode(GLUT_SINGLE|GLUT_RGB);
glutInitWindowPosition(0,0);
glutInitWindowSize(500,500);
glutCreateWindow("bresenham Algo");
myinit();
glutDisplayFunc(display);
glutMainLoop();
}
