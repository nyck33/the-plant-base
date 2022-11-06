import 'package:flutter/material.dart';
import 'menu_cards.dart';
import 'snackbar_page.dart';
// Uncomment lines 3 and 6 to view the visual layout at runtime.
// import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;

void main() {
  // debugPaintSizeEnabled = true;
  runApp(const PlantBaseApp());
}

class PlantBaseApp extends StatefulWidget {
  const PlantBaseApp({super.key});
  @override
  State<PlantBaseApp> createState() => _PlantBaseAppState();
}
class _PlantBaseAppState extends State<PlantBaseApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'The Plant Base',
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('The Plant Base'),
        ),
        body: Column(
          children: [
            MenuCards(),
            SnackBarPage(),

          ],
          ),
        drawer: Drawer(
          child:ListView(
            padding: EdgeInsets.zero, //remove padding
            children:[
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child:Text('Drawer Header'),
              ),
              ListTile(
                title: const Text('Item 1'),
                onTap:(){
                  //update state and close drawer
                  Navigator.pop(context);
                }
              ),
              ListTile(
                title: const Text('Item 2'),
                onTap:(){
                  //update the state of the app
                  //close drawer
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

