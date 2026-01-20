import 'dart:io';

List <int> marks =[];
// function to let student enter his grade
void enterMarksFunc(List<int> marks){
  marks.clear();  // to clear any old marks 
    print("Enter 7 marks:");
  for(int i = 0; i < 7; i++){
    marks.add(int.parse(stdin.readLineSync()!));
  }
}
// function to calculate sum & average of marks

void calcSumMarks(List<int> marks){
  double sum = 0;
  for(int i = 0; i < marks.length; i++){
    sum += marks[i];
  }
  double avg = sum / marks.length;

  print("Sum = $sum");
  print("Average = $avg");

  if(avg >= 60){
    print("Pass");
  } else {
    print('Fail');
  }
}
//************************************************************************************************************* */

void calculate({required String operation, required int num1, required int num2}) {
  switch (operation) {
    case '+':
      print('sum of numbers = ${num1 + num2}');
      break;

    case '-':
      print('difference of numbers = ${num1 - num2}');
      break;

    case '*':
      print('multiplication of numbers = ${num1 * num2}');
      break;

    case '/':
      if (num2 == 0) {
        print("Error: division by zero");
      } else {
        print('div of numbers = ${num1 / num2}');
      }
      break;

    case 'e':
      print("Calculator closed.");
      break;

    default:
      print("Invalid operation, please try again.");
  }
}
//**************************************************************************************
void main() {
  print('============== (problem 1 ) ==================\n');
  int num1, num2;
  String operation;

  do {
    print('enter two number:');
    num1 = int.parse(stdin.readLineSync()!);
    num2 = int.parse(stdin.readLineSync()!);

    print('enter an operation which you want (+  -  *  /) or e if you want exit');
    operation = stdin.readLineSync()!;

    calculate(operation: operation, num1: num1, num2: num2);

  } while (operation != 'e');

  //*********************************************************************
  print('============== (problem 2 ) ==================\n');
  int fixedNumber = 5;
  print("enter any number:");
  int guessNumber = int.parse(stdin.readLineSync()!);

  if (fixedNumber == guessNumber) {
    print('correct');
  } else {
    print('false');
  }

  
  //*********************************************************************
  print('============== (problem 3 ) ==================\n');
   
   enterMarksFunc(marks);
   calcSumMarks(marks);

 
}
