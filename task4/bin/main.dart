import 'dart:io';
void main(){
  print("==================== (problem 1) =====================\n");
  print('Using for loop');
  for(int i = 1 ; i <= 10 ;i++){
    print(i);
  }
  //======================================
   print('Using while loop');
   int j = 1;
   while(j <= 10){
    print(j);
    j++;
   }

   //*****************************************************************************
    print("\n==================== (problem 2) =====================\n");
    print('Enter any number you want:');
    int ? number = int.parse(stdin.readLineSync().toString());
    for(int i = 1 ; i <= 12 ; i++){
      print ('$number* $i = ${i * number}');
    }

    //*****************************************************************************
    print("\n==================== (problem 3) =====================\n");
    int sum = 0;
      for(int i = 0 ; i <= 100 ; i++){
       sum = sum + i;
    }
    print('the sum = $sum');

   //*****************************************************************************
    print("\n==================== (problem 4) =====================\n");
    print("All even number between (1-50) :");
    for(int i = 1 ; i <= 50 ; i++){
       if( i % 2 == 0){
        print(i);
       }
    }
    

}