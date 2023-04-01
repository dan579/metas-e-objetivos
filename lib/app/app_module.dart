import 'package:flutter1/home/presenter/home_page.dart';
import 'package:flutter1/main.dart';
import 'package:flutter1/pages/splash/presenter/splash_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends Module {

      @override
      List<Bind> get binds =>
          [
               // Bind((i) => SplashCubit()),
          ];

      @override
      final List<ModularRoute> routes = [
            ChildRoute(
                Modular.initialRoute, child: (_, args) => SplashPage()),
             ChildRoute("${Modular.initialRoute}home",
                 child: (_, args) => const HomePage()),

      ];
}