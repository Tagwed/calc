import 'dart:io';

import 'package:cli/cli.dart' as cli;

void main(List<String> arguments) {
  firstInputLabel:
  while (true) {
    stdout.write('Введите число: \n');
    String? input1 = stdin.readLineSync();

    double? firstInput = double.tryParse(input1 ?? '');
    if (firstInput == null) {
      stdout.write('Вы ввели не число \n');
      continue firstInputLabel;
    }

    stdout.write('Введите операцию: \n');
    String? inputoper = stdin.readLineSync();
    switch (inputoper) {
      case '%':
      case '+':
      case '-':
      case '*':
      case '/':
        break;
      default:
        stdout.write('Вы ввели не операцию \n');
        continue firstInputLabel;
    }

    stdout.write('Введите второе число: \n');
    String? input2 = stdin.readLineSync();

    double? secondInput = double.tryParse(input2 ?? '');
    if (secondInput == null) {
      stdout.write('Вы ввели не число \n');
      continue firstInputLabel;
    }
    double? result;
    switch (inputoper) {
      case '%':
        result = ((firstInput * 0.01) * secondInput);
      case '+':
        result = (firstInput + secondInput);
      case '-':
        result = (firstInput - secondInput);
      case '*':
        result = (firstInput * secondInput);
      case '/':
        result = (firstInput / secondInput);
    }
    stdout.write(result!.toStringAsFixed(2));
    break;
  }
}
