import 'dart:io';
void main(){
  print('================== (problem 1) ===================\n');
  print('Enter your grade(0-100):');
  double ? grade = double.parse(stdin.readLineSync().toString());
  if(grade >= 90 && grade <=100){
    print("your grade A ");
  }
  else if(grade >= 80 && grade <=89){
    print("your grade B ");
  }
   else if(grade >= 70 && grade <=79){
    print("your grade C ");
  }
   else  {
    print("your grade F ");
  }

  //***********************************************************************
  print('\n================== (problem 2) ===================\n');
  print("enter a day number(1-7)");
    int ? dayNumber = int.parse(stdin.readLineSync().toString());
    switch(dayNumber){
      case 1 :
      print("Saturday");
      case 2 :
      print("Sunday");
      case 3 :
      print("Monday");
      case 4 :
      print("Tuseday");
      case 5 :
      print("Wednesday");
      case 6 :
      print("Thursday");
      case 7 :
      print("Friday");

    }
    
  //***********************************************************************
  print('\n================== (problem 3) ===================\n');
  print("enterany number");
    int ? number = int.parse(stdin.readLineSync().toString());
    if(number > 0){
      print("this number is positive");
    }
    else if(number < 0){
      print("this number is negative");
    }
    else{
      print("Zero");
    }

}