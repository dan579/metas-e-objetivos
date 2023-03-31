// import 'package:animated_text_kit/animated_text_kit.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_modular/flutter_modular.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:institucional/pages/splash/presenter/cubit/splash_cubit.dart';
// import 'package:institucional/util/components/loading_component.dart';
// import 'package:institucional/util/routes/routes.dart';
// import 'package:institucional/util/settings.dart';
// import 'package:institucional/util/states/generic_states.dart';
//
// class SplashPage extends StatefulWidget {
//   const SplashPage({Key? key}) : super(key: key);
//
//
//
//   @override
//   _SplashPageState createState() => _SplashPageState();
// }
//
// class _SplashPageState extends State<SplashPage> {
//   late final SplashCubit splashCubit ;
//
//
//
//   void initState() {
//     super.initState();
//     splashCubit = Modular.get<SplashCubit>();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       resizeToAvoidBottomInset: false,
//       body: BlocBuilder<SplashCubit, GenericState>(
//         bloc: splashCubit,
//         builder: (context, state) {
//           if (state is SearchConfigurationsState) {
//             final splashCubit = Modular.get<SplashCubit>();
//             splashCubit.getConfigurations();
//             return Container(
//                 height: MediaQuery.of(context).size.height,
//                 width: MediaQuery.of(context).size.width,
//                 color: Settings().primaryColorBlack,
//                 child: Stack(
//                   children: [
//                     Center(
//                       child: Container(
//                         child: Image.asset("images/ibeautty_logo.png"),
//                       )
//                     ),
//                     Center(
//                       child: Padding(
//                         padding: EdgeInsets.only(
//                             top: MediaQuery.of(context).size.height / 1.8),
//                         child: DefaultTextStyle(
//                           style: TextStyle(
//                               fontSize: 18.0,
//                               fontFamily: 'Comfortaa',
//                               fontWeight: FontWeight.normal,
//                               color: Colors.white),
//                           child: AnimatedTextKit(
//                             animatedTexts: [
//                               RotateAnimatedText('INSTITUCIONAL'),
//                             ],
//                             onTap: () {},
//                           ),
//                         ),
//                       ),
//                     )
//                   ],
//                 ));
//           } else if (state is SuccessState) {
//             Modular.to.pushReplacementNamed(RoutesApp.welcomePage,
//                 forRoot: true);
//             return getLoading(context);
//           }else if(state is LoadingState){
//             return getLoading(context);
//           }
//           return getLoading(context);
//         },
//       ),
//     );
//   }
// }
