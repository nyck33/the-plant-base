import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:flutter/cupertino.dart';
import '../../constants/constants.dart';
import '/menu_cards.dart';


class ItalianPage extends StatelessWidget{
  const ItalianPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Italian"),
        ),
        body: MenuCards(myItems: pizzas)
    );
  }

}

