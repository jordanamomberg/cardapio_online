import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';

import 'app_controller.dart';
import 'app_widget.dart';
import 'modules/auth/auth_module.dart';
import 'modules/compra/compra_module.dart';
import 'modules/loja/loja_module.dart';
import 'modules/produto/produto_module.dart';
import 'shared/stores/auth/auth_store.dart';
import 'shared/stores/carrinho/carrinho_store.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind(
          (i) => AppController(),
        ),
        Bind(
          (i) => AuthStore(),
        ),
        Bind(
          (i) => CarrinhoStore(),
        ),
      ];

  @override
  List<ModularRouter> get routers => [
    ModularRouter('/',
            module: LojaModule(), transition: TransitionType.fadeIn),
    ModularRouter("/login",
            module: AuthModule(), transition: TransitionType.fadeIn),
    ModularRouter("/produto",
            module: ProdutoModule(), transition: TransitionType.rightToLeft),
    ModularRouter("/compra",
            module: CompraModule(), transition: TransitionType.fadeIn),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
