class Main{

  method void main(){
    int [5] a;
    int i;
    int j;
    int temp;
    i = 0;
    j = 0;
    temp = 0;
    a [0] = 0 - 2;
    a [1] = 5;
    a [2] = 3;
    a [3] = 0 - 7;
    a [4] = 9;
    while(i < 5){
      j = i;
      while(j < 5){
        if(a [i] > a [j]){
          temp = a [i];
          a [i] = a [j];
          a [j] = temp;
        }
        j = j + 1;
      }
      i = i + 1;
    }
    i = 0;
    while(i < 5){
      println(a [i]);
      i = i + 1;
    }

  }

}
