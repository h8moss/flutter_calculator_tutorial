import 'package:flutter/material.dart';

import 'app/home.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Home(),
    );
  }
}




/*
0 1 2 3 4 5 6 7 8 9 .
- + * / = % ( )
Clear Delete
Sin Cos Tan Pi x! x^2 x^n sqrt(x) root(x, y) log ln e e^x

------------
pi  (    )    C   % del
sin cos  tan  7 8 9 *   /
x!  x^2  x^n  4 5 6 1/x -
ln  sqrt root 1 2 3 +   =
pi  e    e^x  0   . mod   
*/
