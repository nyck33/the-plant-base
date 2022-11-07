import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:flutter/cupertino.dart';
import '../../constants/constants.dart';
import '/menu_cards.dart';


class CurriesPage extends StatelessWidget{
  const CurriesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Curries"),
      ),
      body: MenuCards(myItems: curries)
    );
  }

}

