import 'dart:io';

void main() {
  print('Enter parentheses:');
  String text = stdin.readLineSync()!;

  List<String> stack = [];   // first in last out 
  bool isBalanced = true;

  for (int i = 0; i < text.length; i++) {
    String ch = text[i];

    if (ch == '(' || ch == '{' || ch == '[') {
      stack.add(ch);
    }
 
    else if (ch == ')' || ch == '}' || ch == ']') {
       
      if (stack.isEmpty) {
        isBalanced = false;
        break;
      }

      String top = stack.removeLast();

       
      if ((ch == ')' && top != '(') ||
          (ch == '}' && top != '{') ||
          (ch == ']' && top != '[')) {
        isBalanced = false;
        break;
      }
    }
  }
 
  if (stack.isNotEmpty) {
    isBalanced = false;
  }

  if (isBalanced) {
    print('Balanced');
  } else {
    print('Not Balanced');
  }
}