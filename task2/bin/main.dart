import 'dart:io';
void main(){
 print("\n======== part 1 (enter two number & print the biggest) =============\n");
 print("Enter the first number:");
 int ? num1 = int.parse(stdin.readLineSync().toString());
 print("Enter the second number:");
 int ? num2 = int.parse(stdin.readLineSync().toString());
 if(num1 > num2){
  print('first number is the biggest');
 }
 else if(num1 < num2 ){
   print('second number is the biggest');
 } 
 else{
   print('two numbers are equal!!');
 }

 //********************************************************
  print("\n======== part 2 (ask his age) =============");
  print("what is your age?");
  double ? age = double.parse(stdin.readLineSync().toString());
  if(age <= 0 ){
    print("invalid age , please enter valid age");
  }
  else if(age < 12){
    print("Child");
  }
   else if(age >= 12 && age <18){
    print("Teen");
  }
  else{
    print("Adult");
  }

   //********************************************************
  print("\n======== last part (even or odd number?!!) =============");
 print("Enter any number");
 int ? number = int.parse(stdin.readLineSync().toString());
 int divQuotient = number % 2;
 if(divQuotient == 0){
  print('this number is even');
 }
 else{
   print('this number is odd');
 }


}