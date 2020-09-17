//task 1
/*void setup(){
 printLine();
 nameAge();
 }
 
 
 
 void printLine()
 {
 println("");
 
 }
 
 void nameAge()
 {
 String name="Hans-Henrik";
 int age=23;
 println("My name is"+name+"I am"+age+"years old");
 
 }
 */

// task 2
boolean happy = true;
 
 void setup() {
 if (iAmHappy())
 {
 println("I clap my hands");
 }
 else
 {
 println("I don't clap my hands"); 
 }
 }
 
 
 boolean iAmHappy()
 {
   if (happy){
     return true;
   }
   else
   {
     return false;
   }
 
 }

//task 4
/*
int [] numbers = {3, 5, 5};
String[] cars = {"Honda", "Mazda", "BMW"};
boolean[] boolArray=new boolean[4];


void setup() {
  printS();
  println(total(numbers));
  
}
void printS() {
  println(cars);
}

int total(int []sum) {
  int storage=0;
  for (int i=0; i<3; i=i+1)
  {
    storage+=sum[i];
  }
  return storage;
}

float avg(int[]sum2){
  float storage=0;
  for(int i=0;i<sum2.length; i=i+1)
  {
    storage += sum2[i];
  }
  storage=storage / sum2.length;
  return storage;
}*/