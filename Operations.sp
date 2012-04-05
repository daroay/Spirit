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

class Nodo{

  int content;
  Nodo next;
  
  method void setNext(Nodo next){
    this.next = next;
  }
  
  method Nodo getNext(){
    return this.next;
  }
  
  method void setContent(int content){
    this.content = content;
  }
  
  method int getNext(){
    return this.content;
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
    Nodo n;
    Nodo next;
    int i;
    n = new Nodo();
    next = new Nodo();
    i = 0;
    while(i < 10){
      n.setContent(i);
      n.setNext(next);
      n = next;
      next = new Nodo();
    }
  }
  
}
