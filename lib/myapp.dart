import 'package:flutter/material.dart';
import 'package:flutter_uikit/ui/page/dashboard/dashboard_one.page.dart';
import 'package:flutter_uikit/ui/page/dashboard/dashboard_two_page.dart';
import 'package:flutter_uikit/ui/page/home_page.dart';
import 'package:flutter_uikit/ui/page/login/login_page.dart';
import 'package:flutter_uikit/ui/page/notfound/notfound_page.dart';
import 'package:flutter_uikit/ui/page/payment/credit_card_page.dart';
import 'package:flutter_uikit/ui/page/profile/profile_one_page.dart';
import 'package:flutter_uikit/ui/page/settings/settings_one_page.dart';
import 'package:flutter_uikit/ui/page/shopping/product_detail_page.dart';
import 'package:flutter_uikit/ui/page/shopping/shopping_details_page.dart';
import 'package:flutter_uikit/ui/page/shopping/shopping_one_page.dart';
import 'package:flutter_uikit/ui/page/timeline/timeline_one_page.dart';

import 'package:flutter_uikit/utils/uidata.dart';

class MyApp extends StatelessWidget {
  final materialApp = MaterialApp(
    theme: ThemeData(
        primaryColor: Colors.black,
        fontFamily: UIData.quickFont,
        primarySwatch: Colors.yellow),
    debugShowCheckedModeBanner: false,
    showPerformanceOverlay: false,
    home: DashboardTwoPage(),
    // initialRoute: UIData.notFoundRoute,

    //routes
    routes: <String, WidgetBuilder>{
      UIData.homeRoute: (BuildContext context) => HomePage(),
      UIData.profileOneRoute: (BuildContext context) => ProfileOnePage(),
      UIData.timelineOneRoute: (BuildContext context) => TimelineOnePage(),
      UIData.notFoundRoute: (BuildContext context) => NotFoundPage(),
      UIData.settingsOneRoute: (BuildContext context) => SettingsOnePage(),
      UIData.shoppingOneRoute: (BuildContext context) => ShoppingOnePage(),
      UIData.shoppingTwoRoute: (BuildContext context) => ShoppingDetailsPage(),
      UIData.shoppingThreeRoute: (BuildContext context) => ProductDetailPage(),
      UIData.loginOneRoute: (BuildContext context) => LoginPage(),
      UIData.paymentOneRoute: (BuildContext context) => CreditCardPage(),
      UIData.dashboardOneRoute: (BuildContext context) => DashboardOnePage(),
      UIData.dashboardTwoRoute: (BuildContext context) => DashboardTwoPage(),
    },
  );

  @override
  Widget build(BuildContext context) {
    return materialApp;
  }
}
