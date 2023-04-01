import 'package:flutter/material.dart';
import 'package:flutter1/main.dart';
import 'package:flutter1/pages/initial_page/presenter/initial_page.dart';
import 'package:flutter1/util/settings.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class HomePage extends StatefulWidget {

  const HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late PersistentTabController controller;
  List<Widget> buildScreens() {
    return [
      InitialPage(),
      Container(color: Colors.blue),
    ];
  }
  List<PersistentBottomNavBarItem> navBarsItems() {
    return [
      PersistentBottomNavBarItem(
          icon: Icon( Icons.person_outline,),
          title: ("token"),
          activeColorSecondary: Colors.greenAccent
      ),
      PersistentBottomNavBarItem(
          icon: Icon( Icons.person_outline,),
          title: ("point"),
          activeColorSecondary: Colors.greenAccent
      ),
    ];
  }
  @override
  void initState() {
    super.initState();
    controller = PersistentTabController(initialIndex: 0);
  }

    @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(),
      bottomNavigationBar: PersistentTabView(
        context,
        controller: controller,
        screens: buildScreens(),
        items: navBarsItems(),
        confineInSafeArea: false,
        backgroundColor: Settings().appBarColor,
        handleAndroidBackButtonPress: true,
        resizeToAvoidBottomInset: false,
        stateManagement: true,
        hideNavigationBarWhenKeyboardShows: true,
        popAllScreensOnTapOfSelectedTab: true,
        popActionScreens: PopActionScreensType.all,
        itemAnimationProperties: ItemAnimationProperties(
          duration: Duration(milliseconds: 400),
          curve: Curves.ease,
        ),
        screenTransitionAnimation: ScreenTransitionAnimation(
          animateTabTransition: true,
          curve: Curves.ease,
          duration: Duration(milliseconds: 300),
        ),
        navBarStyle: NavBarStyle.style13,
      ),
    );
  }
}
