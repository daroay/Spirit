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


  method int suma(int a, boolean b){
    a = 10;
    while(a > 10){
      a = 100;
    }
  }
  
  
  method float divide(int a, int b){
    b = 10;
    suma(b, true);
  }

  method void main() {
    boolean a;
    int b;
    int c;
    int d;
    Persona p;
    suma(b,a);
    p.nombre();
  }
  
}
