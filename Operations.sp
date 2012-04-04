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
    a = 10;
    b = 11;
    suma(a,b);
    p.nombre();
  }
  
}
