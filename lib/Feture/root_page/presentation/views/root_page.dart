import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:madsolutionproject/Feture/cart/presentation/view/cart_view.dart';
import 'package:madsolutionproject/Feture/home/presentation/view/home_view.dart';
import 'package:madsolutionproject/Feture/profile/presentation/view/profile_view.dart';
import 'package:madsolutionproject/Feture/scan/presentation/view/scan_page.dart';
import 'package:madsolutionproject/core/constant.dart';
import 'package:madsolutionproject/core/util/images_gen.dart';
import 'package:page_transition/page_transition.dart';

class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int _bottomNavIndex = 0;

  List<Widget> _widgetOptions() {
    return [const HomeView(), CartView(), SettingView(), ProfileView()];
  }

  //List of the pages icons
  List<IconData> iconList = [
    Icons.home,
    Icons.shopping_cart,
    Icons.settings,
    Icons.person,
  ];

  List<String> titleList = ['Home', 'Scan', 'Cart', 'Profile'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: _bottomNavIndex, children: _widgetOptions()),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            PageTransition(
              child: const ScanPage(),
              type: PageTransitionType.bottomToTop,
            ),
          );
        },
        backgroundColor: kpraimarycolorBlue,
        child: Image.asset(Assets.imagesCodeScanTwo, height: 30.0),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: buildAnimatedBottomNavigationBar(),
    );
  }

  AnimatedBottomNavigationBar buildAnimatedBottomNavigationBar() {
    return AnimatedBottomNavigationBar(
      splashColor: kpraimarycolorBlue,
      activeColor: kpraimarycolorBlue,
      inactiveColor: Colors.black.withOpacity(.5),
      icons: iconList,
      activeIndex: _bottomNavIndex,
      gapLocation: GapLocation.center,
      notchSmoothness: NotchSmoothness.verySmoothEdge,
      onTap: (index) {
        setState(() {
          _bottomNavIndex = index;
        });
      },
    );
  }
}

class SettingView extends StatelessWidget {
  const SettingView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Icon(
          Icons.settings_outlined,
          size: 200,
          color: kpraimarycolorBlue,
        ),
      ),
    );
  }
}
