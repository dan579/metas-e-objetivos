import 'package:flutter/material.dart';
import 'package:flutter1/app/app_module.dart';
import 'package:flutter1/app/app_widget.dart';
import 'package:flutter1/home/presenter/home_page.dart';
import 'package:flutter1/pages/initial_page/presenter/initial_page.dart';
import 'package:flutter1/util/app_bar.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

void main() async {
  initializeDateFormatting("pt").then((_) => runApp(ModularApp(
        module: AppModule(),
        child: AppWidget(),
      )));
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}




