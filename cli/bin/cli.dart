import 'dart:io';

import 'package:cli/cli.dart' as cli;

void main(List<String> arguments) {
  stdout.write('Введите число: ');
  String? input1 = stdin.readLineSync();

  int? firstInput = int.tryParse(input1 ?? '');
  if (firstInput == null) {
    stdout.write('Вы ввели не число ');
    return;
  }

  stdout.write('Введите операцию: ');
  String? inputoper = stdin.readLineSync();
  switch (inputoper) {
    case '+':
    case '-':
    case '*':
    case '/':
    default:
      stdout.write('Вы ввели не операцию \n');
  }

  stdout.write('Введите второе число: ');
  String? input2 = stdin.readLineSync();

  int? secondInput = int.tryParse(input2 ?? '');
  if (secondInput == null) {
    stdout.write('Вы ввели не число ');
    return;
  }
  String? result;
  switch (inputoper) {
    case '+':
      result = (firstInput + secondInput).toString();
    case '-':
      result = (firstInput - secondInput).toString();
    case '*':
      result = (firstInput * secondInput).toString();
    case '/':
      result = (firstInput / secondInput).toString();
  }
  stdout.write(result);
}
