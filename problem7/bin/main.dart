import 'dart:io';
void main(){
  print('enter number:');
  int number = int.parse(stdin.readLineSync()!);
  for(int i = 1 ; i <= number ; i++){
    for(int j = 1 ; j <= i; j++){   
      stdout.write('$j');
    }
   print(' ');
  }

}
