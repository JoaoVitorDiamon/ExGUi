import 'dart:io';

void main() {
  List<List<int>> temperaturas = [
    [20, 16, 15, 35, 28], // Janeiro
    [22, 37, 39, 20, 19], // Fev
    [29, 33, 37, 30, 28], // Marco
    [32, 18, 22, 33, 39] // Abril
  ];

  var temperaturaMenor = temperaturas[0][0];
  var temperaturaMaior = temperaturas[0][0];
  var somaDasTemperaturas = 0;
  double media = 0;

  for (int i = 0; i < temperaturas.length; i++) {
    for (int j = 0; j < temperaturas[0].length; j++) {
      if (temperaturas[i][j] > temperaturaMaior) {
        temperaturaMaior = temperaturas[i][j];
      }
      if (temperaturas[i][j] < temperaturaMenor) {
        temperaturaMenor = temperaturas[i][j];
      }
      somaDasTemperaturas += temperaturas[i][j];
    }
  }

  media = somaDasTemperaturas / (temperaturas.length * temperaturas[0].length);

  var nmrMenorQueAMedia = 0;

  for (int i = 0; i < temperaturas.length; i++) {
    for (int j = 0; j < temperaturas[0].length; j++) {
      if (temperaturas[i][j] < media) {
        nmrMenorQueAMedia++;
      }
    }
  }

  print("A Maior temperatura registrada foi:$temperaturaMaior °C");
  print("A Menor temperatura registrada foi:$temperaturaMenor °C");
  print("A Media das temperatura registrada foi:$media °C");
  print(
      "Existem $nmrMenorQueAMedia dias em que a temperatura foi menor que a media");
}
