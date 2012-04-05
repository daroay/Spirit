class Persona {

  int in_var;

  method void edad(){
    in_var = 10;
  }

  method void nombre(){
    int x;
    x = 60;
    edad();
  }

}

class Main {

  int c;
  c = 30;

  method int suma(int a, int b){
    int c;
    c = a + b;
  }
  
  
  method float divide(int a, int b){
    float c;
    c = a / b;
  }

  method void main() {
    Persona p;
    int a;
    int b;
    int c;
    float d;
    d = iread() + fread() + iread();
    b = iread();
    this.c = iread() + iread();
    suma(a,b);
    print(5 + 7 - 2);
    p.nombre();
  }
  
}
