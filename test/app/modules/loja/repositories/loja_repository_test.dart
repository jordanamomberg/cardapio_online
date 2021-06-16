import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:dio/dio.dart';

import 'package:htd_loja_store/app/modules/loja/repositories/loja_repository.dart';

class MockClient extends Mock implements Dio {}

void main() {
  LojaRepository repository;

  setUp(() {

  });

  group('LojaRepository Test', () {


    test('returns a Post if the http call completes successfully', () async {

    });
  });
}
