import 'dart:io';
int sumFunc (int x , int y){
  return x + y;
}
//================================================
void checkIsEven(int x){
  if(x % 2 == 0){
    print("this number is even");
  }
  else {
    print("this number is odd");
  }
 
} 
//================================================

int maxOfList(List<int> x){
  int max = x[0];
  for(int i = 0 ; i < x.length ; i++){
    if(max < x[i]){
      max = x[i];
    }
  } 
  return max;

}
//=================================================
 void welcomeFunc(String ? name){
  print('Welcome $name');
 }



void main(){
  print("============ (problem 1 ) ===================\n");
  print("enter two number to sum ");
  int x = int.parse(stdin.readLineSync()!);
  int y = int.parse(stdin.readLineSync()!);
  print('the sum = ${sumFunc(x, y)}');

  //*********************************************************************
   print("\n============ (problem 2 ) ===================\n");
  print("enter number to check this is even or not ");
  int ? checkNum = int.parse(stdin.readLineSync().toString());
  checkIsEven(checkNum);
 
  //*********************************************************************
   print("\n============ (problem 3 ) ===================\n");
   print("enter length of list as you want ");
     int ? lenghtList= int.parse(stdin.readLineSync().toString());
     List <int> numbers =[];

    print('Enter number of list: ');     
  for (int i = 0; i < lenghtList; i++) {
    int value = int.parse(stdin.readLineSync()!);
    numbers.add(value);
  }
  print("the max number of list = ${maxOfList(numbers)}");

  
    //*********************************************************************
   print("\n============ (problem 4 ) ===================\n");
   print("What is your name:");
    String ? name=  stdin.readLineSync();
     welcomeFunc(name);


  
 

}