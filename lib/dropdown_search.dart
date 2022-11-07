import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'constants/constants.dart';

class DropdownSearch extends StatelessWidget {
  const DropdownSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Center(
        child:ListView.builder(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemCount: foodItems.length,
          prototypeItem: ListTile(
            title: Text(foodItems.first),
          ),
          itemBuilder: (context, index) {
            return ListTile(
              //onTap: ,
              title: Text(foodItems[index]),
            );
          },
        ),
      ),
    );
  }
}
