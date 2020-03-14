import 'package:flutter_masked_text/flutter_masked_text.dart';

class ImcBloc {
  var alturaCtrl = new MaskedTextController(mask: '000');
  var pesoCtrl = new MaskedTextController(mask: '000');
  var resultado = "Preencha os dados para calcular seu IMC";

  calcular() {
    double peso = double.parse(pesoCtrl.text);
    double altura = double.parse(alturaCtrl.text) / 100;
    double imc = peso / (altura * altura);

    if (imc < 18.6) {
      resultado = "Abaixo do Peso (${imc.toStringAsPrecision(2)})";
    } else if (imc >= 18.6 && imc <= 24.9) {
      resultado = "Peso Ideal (${imc.toStringAsPrecision(2)})";
    } else if (imc >= 24.9 && imc <= 29.9) {
      resultado = "Levemente acima do peso (${imc.toStringAsPrecision(2)})";
    } else if (imc >= 24.9 && imc <= 34.9) {
      resultado = "Obesidade Grau I (${imc.toStringAsPrecision(2)})";
    } else if (imc >= 34.9 && imc <= 39.9) {
      resultado = "Obesidade Grau II (${imc.toStringAsPrecision(2)})";
    } else if (imc >= 40) {
      resultado = "Obesidade Grau III (${imc.toStringAsPrecision(2)})";
    }
  }
}
