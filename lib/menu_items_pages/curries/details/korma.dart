import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter/cupertino.dart';
import '../../../constants/constants.dart';
import '/menu_cards.dart';

class KormaPage extends StatelessWidget{
  const KormaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Korma Curry"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: const [
            Expanded(
              child: Text('pb Korma is good'),
            ),
          ],
        ),
    );
  }
}