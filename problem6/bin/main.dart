import 'dart:io';

void main() {
  print('enter a text:');
  String text = stdin.readLineSync()!;

  Map<String, int> freq = {};  // key = character ,, value = his freqencey

if (text.isNotEmpty){
  for (int i = 0; i < text.length; i++) {
    String ch = text[i];
   
    if (freq.containsKey(ch)) {
      freq[ch] = freq[ch]! + 1;
    } else {
      freq[ch] = 1;
    }
  }
  }
  else {
    print('no text found !!!');
    return;
  }

   print('character -> his freqencey');
  freq.forEach((key, value) {
    print('$key -> $value');
  });
}
