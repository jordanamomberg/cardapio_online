import 'package:flutter_modular/flutter_modular.dart';
import 'package:dio/dio.dart';
import 'package:htd_loja_store/app/modules/loja/models/loja_model.dart';

class LojaRepository extends Disposable {
  final Dio dio;

  LojaRepository(this.dio);

  Future<List<LojaModel>> obterLojas() async {
    return _data;
  }

  @override
  void dispose() {}
}

get _data => [
      LojaModel(1, "Amor por Gatos", "cat_lovers.png"),
      LojaModel(2, "Comidinhas Dog", "dog_foods.png"),
      LojaModel(3, "Amor por Cães", "pet_lovers.png"),
      LojaModel(4, "Pet Shop", "pet_shops.png"),
    ];
