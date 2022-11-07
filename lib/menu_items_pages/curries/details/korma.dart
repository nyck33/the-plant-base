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
        body: Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              Text(
                'pb Korma is gooooooood',
              )
            ],
          ),
        )
    );
  }

}