class Persona {

  int in_var;

  method void edad(){
    in_var = 10;
    return;
  }

  method void nombre(){
    int x;
    x = 60;
    edad();
  }

}

class Main {

  float c;
  c = 30.0;

  method Persona suma(int a, int b){
    int c;
    Persona p;
    c = a + b;
    return p;
  }
  
  
  method float divide(int a, int b){
    int c;
    this.c = a / b;
    return this.c;
  }

  method void main() {
    Persona p;
    int a;
    int b;
    int c;
    p.nombre();
  }
  
}
