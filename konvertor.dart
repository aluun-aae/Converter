import 'dart:io';

class Valuta {
  int? money;
  static var euro = 101.46;
  static var doll = 84.78;
  static var tenge = 0.20;
  static var som = 1.00;
  Valuta() {
    stdout.write("USD: = $doll, EUR = $euro,KZT = $tenge \n");
    stdout.write("Выберите услугу");
    stdout.write("\n (1) покупка \n (2) продажа  \n  ");
    String a = stdin.readLineSync()!;
    if (a == "2") {
      stdout.write("Выберите валюту");
      print(("\n EUR  \n USD \n KZT "));

      var b = stdin.readLineSync();
      stdout.write("Количество Валюты: ");
      String c = stdin.readLineSync()!;
      var q = int.parse(c);
      if (b == "USD" || b == "usd" || b == "Usd") {
        var d = q * doll;
        stdout.write(d);
      } else if (b == "EUR" || b == "eur" || b == "Eur") {
        var d = q * doll;
        stdout.write(d);
      } else if (b == "KZT" || b == "kzt" || b == "Kzt") {
        var d = q * doll;
        stdout.write(d);
      } else {
        stdout.write("ERROR");
      }
    } else if (a == "1") {
      stdout.write("Введите количества сом: ");
      String c = stdin.readLineSync()!;
      var q = int.parse(c);
      stdout.write("Выберите валюту:");
      stdout.write("\n EUR \n KZT \n USD \n");
      var b = stdin.readLineSync();
      if (b == "USD" || b == "usd" || b == "Usd") {
        var d = q / doll;
        stdout.write(d);
      } else if (b == "EUR" || b == "eur" || b == "Eur") {
        var d = q / doll;
        stdout.write(d);
      } else if (b == "KZT" || b == "kzt" || b == "Kzt") {
        var d = q / doll;
        stdout.write(d);
      } else {
        stdout.write("ERROR");
      }
    }
  }
}

void main() {
  Valuta a = Valuta();
}
