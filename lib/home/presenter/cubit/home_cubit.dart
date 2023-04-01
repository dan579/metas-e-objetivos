// import 'dart:async';
//
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:institucional/pages/define_password/presenter/define_password_page.dart';
// import 'package:institucional/pages/forgot_password/codig/presenter/codig_page.dart';
// import 'package:institucional/pages/my_account/presenter/my_account_page.dart';
// import 'package:institucional/pages/token/presenter/token_page.dart';
// import 'package:institucional/util/settings.dart';
// import 'package:institucional/util/states/generic_states.dart';
// import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
//
// class HomeCubit extends Cubit<GenericState>{
//   HomeCubit() : super(LoadingState());
//   int page = 0;
//   int initialPage = 0;
//
//   loadingHome(){
//     emit(LoadingState());
//     Timer(const Duration(seconds: 2), () {
//       emit(SuccessState());
//     });
//     emit(SuccessState());
//   }
//   getpage(int index){
//     page = index;
//     emit(LoadingState());
//     emit(SuccessState());
//
//   }
//   setInitialPage(int initPage) {
//     page = initPage;
//     emit(SuccessState());
//   }
//   List<Widget> buildScreens() {
//     return [
//       const TokenPage(),
//       Container(color: Colors.blue),
//       const MyAccountPage(),
//     ];
//   }
//   List<PersistentBottomNavBarItem> navBarsItems() {
//     return [
//       PersistentBottomNavBarItem(
//         icon: Image.asset("images/token.png", height: 40, width: 40,),
//         title: ("token"),
//         activeColorSecondary: Settings().colorGrey,
//       ),
//       PersistentBottomNavBarItem(
//         icon:  Image.asset("images/point.png", height: 30, width: 30,),
//         title: ("point"),
//         activeColorSecondary: Settings().colorGrey,
//       ),
//       PersistentBottomNavBarItem(
//         icon:  Image.asset("images/perfil.png", height: 28, width: 28,),
//         title: ("myAccount"),
//         activeColorSecondary: Settings().colorGrey,
//       ),
//     ];
//   }
//
// }