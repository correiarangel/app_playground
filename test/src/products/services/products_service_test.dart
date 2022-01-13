import 'dart:convert';

import 'package:app_playground/src/products/services/products_service.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:uno/uno.dart';

class UnoMock extends Mock implements Uno {}

class RequistMock extends Mock implements Request {}

void main() async {
  final unoMock = UnoMock();
  final service = ProductService(unoMock);
  test('Deve retornar todos os produtos ...', () async {
    when(() => unoMock.get(any())).thenAnswer(
      (_) async => Response(
        headers: {},
        request: RequistMock(),
        status: 200,
        data: jsonResponse,
      ),
    );
    final products = await service.fetchProducts();
    expect(products[0].title, 'Flutter 2');
  });
}

final jsonResponse = jsonDecode(r'''[
  {
    "id": "0",
    "title": "Flutter 2"
  },
  {
    "id": "1",
    "title": "React Native"
  },
  {
    "title": "Ionic",
    "id": "2"
  }
] ''');
