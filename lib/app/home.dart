import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.max,
      children: [
        Expanded(
            flex: 1,
            child: Center(
              child: Text(
                '000000000000',
                style: TextStyle(fontSize: 40),
                textAlign: TextAlign.center,
              ),
            )),
        Expanded(
          flex: 4,
          child: Column(
            children: [
              Expanded(
                child: Row(
                    children: _buildRowChildren([
                  'ALT',
                  '(',
                  ')',
                  'C',
                  '%',
                  'DEL',
                  '/',
                ])),
              ),
              Expanded(
                child: Row(
                    children: _buildRowChildren([
                  'sin',
                  'cos',
                  'tan',
                  '7',
                  '8',
                  '9',
                  '*',
                ])),
              ),
              Expanded(
                child: Row(
                    children: _buildRowChildren([
                  'x!',
                  'x^2',
                  'sqrt(x)',
                  '4',
                  '5',
                  '6',
                  '-',
                ])),
              ),
              Expanded(
                child: Row(
                    children: _buildRowChildren([
                  'ln',
                  'pi',
                  'e',
                  '1',
                  '2',
                  '3',
                  '+',
                ])),
              ),
              Expanded(
                child: Row(
                    children: _buildRowChildren([
                  '1/x',
                  'oct',
                  'bin',
                  '0',
                  '.',
                  'mod',
                  '=',
                ])),
              ),
            ],
          ),
        ),
      ],
    ));
  }

  List<Widget> _buildRowChildren(List<String> operations) {
    return operations.map((v) {
      return Expanded(
          child: ConstrainedBox(
        constraints: const BoxConstraints.expand(),
        child: ElevatedButton(onPressed: () {}, child: Text(v)),
      ));
    }).toList();
  }
}
