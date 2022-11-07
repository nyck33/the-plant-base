import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:enum_to_string/enum_to_string.dart';

//pages
import 'menu_items_pages/curries/curries.dart';
import 'menu_items_pages/italian/italian.dart';

//utilities
import 'enums/my_enums.dart';
import 'menu_cards.dart';
import 'snackbar_page.dart';
import 'dropdown_search.dart';
import 'constants/constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      centerTitle: true,
      title: const Text('The Plant Base'),
    ),
    body: Column(
        children:  [
          MenuCards(),
          const DropdownSearch(),
          const SnackBarPage(),
        ],
    ),
    drawer: Drawer(
      child: ListView(
        padding: EdgeInsets.zero, //remove padding
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text('Navigation'),
          ),
          ListTile(
              title: const Text('Home'),
              onTap: () {
                //update state and close drawer
                Navigator.pop(context);
              }),
          ListTile(
            title: const Text('Back'),
            onTap: () {
              //update the state of the app
              //close drawer
              Navigator.pop(context);
            },
          ),
        ],
      ),
    ),
  );
}
