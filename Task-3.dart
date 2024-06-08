/* 

 int roma(String t){
   Map<String,int> m={
     "I":1,
     "V":5,
     "X":10,
     "L":50,
     "C":100,
     "D":500,
     "M":1000,
   };
   int a=0,b=0;
   for(int i=t.length-1;i>=0;i--){
     int c = m[t[i]]!;
     if(c<b){
       a-=c;
     }else a+=c;
   b=c;
   }return a;
 }

 void main(List<String> args) {
  print(roma('MDCLXVI')); 
 } */

 void main(List<String> args) {
  print(roma("MDCLXVI")); 
}

int roma(String t) {
  Map<String, int> m = {
    "I": 1,
    "V": 5,
    "X": 10,
    "L": 50,
    "C": 100,
    "D": 500,
    "M": 1000,
  };
  
  int a = 0;
  int b = 0;
  
  for (int i = t.length - 1; i >= 0; i--) {
    int c = m[t[i]]!;
    if (c < b) {
      a -= c;
    } else {
      a += c;
    }
    b = c;
  }
  
  return a;
}
