import 'package:test/test.dart';
import 'package:my_app/utils.dart';

void main(List<String> arguments) {
  test('IMC', () {
    expect(calculaIMC(72.0, 1.78), 22.0);
  });
}
