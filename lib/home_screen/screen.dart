

import 'package:flutter/material.dart';
import 'package:test_fo_widgets/screens/animated_cross_fade_screen.dart';
import 'package:test_fo_widgets/screens/bottom_navigationbar_screen.dart';
import 'package:test_fo_widgets/screens/center_screen.dart';
import 'package:test_fo_widgets/screens/choise_chip_screen.dart';
import 'package:test_fo_widgets/screens/column_row_screen.dart';
import 'package:test_fo_widgets/screens/expanded_screen.dart';
import 'package:test_fo_widgets/screens/expansiontile_screen.dart';
import 'package:test_fo_widgets/screens/flexible_screen.dart';
import 'package:test_fo_widgets/screens/hero_screen.dart';
import 'package:test_fo_widgets/screens/media_orien_screen.dart';
import 'package:test_fo_widgets/screens/media_safe_screen.dart';
import 'package:test_fo_widgets/screens/network_image_screen.dart';
import 'package:test_fo_widgets/screens/padding_screen.dart';
import 'package:test_fo_widgets/screens/pageview_screen.dart';
import 'package:test_fo_widgets/screens/popupmenubutton_screen.dart';
import 'package:test_fo_widgets/screens/range_slider_screen.dart';
import 'package:test_fo_widgets/screens/show_modal_bottom_sheet_screen.dart';
import 'package:test_fo_widgets/screens/sliver_appbar_screen.dart';
import 'package:test_fo_widgets/screens/stack_pos_screen.dart';
import 'package:test_fo_widgets/screens/test_screen.dart';
import 'package:test_fo_widgets/screens/visibility_screen.dart';
import 'package:test_fo_widgets/screens/will_pop_scope_screen/will_pop_scope_screen.dart';
import 'package:test_fo_widgets/screens/wrap_screen.dart';

import '../screens/fittedbox_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  void onItemtapped(int index){
    setState(() {
      controller.jumpToPage(index);
      //currentIndex = index;
    });
  }
  PageController controller = PageController(initialPage: 0);
  //int currentIndex
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: controller,
        children:  const [
          SharedPreferencesDemo(),
          WillPopScopeScreen(),
          FlexibleScreen(),
          ExpandedScreen(),
          AnimatedCrossFadeScreen(),
          ShowModalBottomSheetScreen(),
          PageViewScreen(),
          BottomNavigationBarScreen(),
          VisibilityScreen(),
          RangeSliderScreen(),
          PopupMenuButtonScreen(),
          ExpansionTileScreen(),
          SliverAppBarScreen(),
          ChoiceChipScreen(),
          HeroScreen(),
          NetworkImageScreen(),
          CenterScreen(),
          FittedBoxScreen(),
          ColumnRowScreen(),
          WrapScreen(),
          StackPositionedScreen(),
          PaddingScreen(),
          MediaSafeScreen(),
          MediaOrientationScreen(),
        ],
      ),
    );
  }
}
