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

class List{

  Node head;
  head = null;
  
  method void insert(Node n){
    Node aux;
    Node auxP;
    int i;
    if(head == null){
      head = n;
      return;
    }else{
      aux = head;
      while(aux != null){
        auxP = aux;
        aux = aux.getNext();
      }
      auxP.setNext(n);
    }
  }
  
  method void expose(){
    Node aux;
    aux = head;
    while(aux != null){
      println(aux.getContent());
      aux = aux.getNext();
    }
  }

}


class Main{


  method void main(){
    List l;
    Node aux;
    int i;
    i = 0;
    l = new List();
    while(i < 10){
      aux = new Node();
      aux.setContent(i);
      l.insert(aux);
      i = i + 1;
    }
    l.expose();
  }

}
