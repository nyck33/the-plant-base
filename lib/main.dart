import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:layout/menu_items_pages/curries/details/korma.dart';

//pages
import 'homescreen.dart';
import 'menu_items_pages/curries/curries.dart';
import 'menu_items_pages/italian/italian.dart';
import 'menu_items_pages/curries/details/korma.dart';

//utilities
import 'enums/my_enums.dart';
import 'menu_cards.dart';
import 'snackbar_page.dart';
import 'dropdown_search.dart';
import 'constants/constants.dart';

// Uncomment lines 3 and 6 to view the visual layout at runtime.
// import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;
void main() {
  //debugPaintSizeEnabled = true;
  runApp(PlantBaseApp());
}

class PlantBaseApp extends StatelessWidget {
  PlantBaseApp({Key? key}) : super(key: key);

  static const String title = "The Plant Base";

  @override
  Widget build(BuildContext context) => MaterialApp.router(
      routerConfig: _router,
      title: title,
  );

  final GoRouter _router = GoRouter(
    routes: <GoRoute>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) =>
        const HomeScreen(),
        routes: <GoRoute>[
          GoRoute(
            //path: (EnumToString.convertToString(MyPage.curries)),
            path: 'pbCurries',
            builder: (BuildContext context, GoRouterState state) =>
            const CurriesPage(),
            /*
            routes: <GoRoute>[
              GoRoute(
                path: 'pbKorma',
                builder: (BuildContext context, GoRouterState state) =>
                const KormaPage(),
              ),


            ],

             */
          ),
          GoRoute(
            path: 'pbKorma',
            builder: (BuildContext context, GoRouterState state) =>
            const KormaPage(),
          ),
        ],
      ),
    ],
  );
}

