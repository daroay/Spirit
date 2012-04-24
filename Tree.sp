class Node{
  int content;
  Node nextRight;
  Node nextLeft;
  
  method void setNextRight(Node next){
    this.nextRight = next;
  }
  
  method Node getNextRight(Node next){
    return nextRight;
  }
  
  method void setNextLeft(Node next){
    this.nextLeft = next;
  }
  
  method Node getNextLeft(){
    return nextLeft;
  }
  
  method void setContent(int c){
    content = c;
  }
  
  method int getContent(){
    return content;
  }
}

class Tree{

  Node head;
  
  method Node getHead(){
    return head;
  }

  method void insert(Node n){
    Node aux;
    Node auxP;
    if(head == null){
      head = n;
    }else{
      aux = head;
      
      while(aux != null){
        auxP = aux;
        if(n.getContent() > aux.getContent()){
          aux = aux.getNextRight();
        }
        else{
          if(n.getContent() < aux.getContent()){
            aux = aux.getNextLeft();
          }else{
            if(n.getContent() == aux.getContent()){
              return;
            }
          }
        }
      }
      
      if(n.getContent() > auxP.getContent()){
        auxP.setNextRight(n);
      }else{
        if(n.getContent() < auxP.getContent()){
          auxP.setNextLeft(n);
        }
      }
      
    }
  
  }
  
  method void inOrder(Node n){
    Node aux;
    if(n == null){
      return;
    }else{
      aux = n.getNextLeft();
      inOrder(aux);
      println(n.getContent());
      aux = n.getNextRight();
      inOrder(aux);
    }
  }

}

class Main{

  method void main(){
    Tree t;
    Node aux;
    t = new Tree();
    aux = new Node();
    aux.setContent(1);
    t.insert(aux);
    aux = new Node();
    aux.setContent(3);
    t.insert(aux);
    aux = new Node();
    aux.setContent(2);
    t.insert(aux);
    aux = new Node();
    aux.setContent(10);
    t.insert(aux);
    aux = new Node();
    aux.setContent(8);
    t.insert(aux);
    aux = t.getHead();
    t.inOrder(aux);
    
  }

}
