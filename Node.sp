class Node{
  int content;
  Node next;
  
  method void setNext(Node next){
    this.next = next;
  }
  
  method Node getNext(){
    return next;
  }
  
  method void setContent(int c){
    content = c;
  }
  
  method int getContent(){
    return content;
  }
}

class Main{

  method int fibo(int a){
    if(a <= 2){
      return 1;
    }
    return fibo(a - 1) + fibo(a - 2);
  }

  method void main(){
    Node n;
    int i;
    Node aux;
    Node head;
    head = new Node();
    n = head;
    i = 0;
    while(i < 7){
      n.setContent(i);
      aux = new Node();
      n.setNext(aux);
      n = aux;
      i = i + 1;
    }
    i = 0;
    n = head;
    while(i < 7){
      println(n.getContent());
      n = n.getNext();
      i = i + 1;
    }
  }

}
