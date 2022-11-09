import 'package:enum_to_string/enum_to_string.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:layout/enums/my_enums.dart';
import 'constants/constants.dart';

class MenuCards extends StatelessWidget{

  final List<String> myItems;
  MenuCards({super.key, this.myItems=menuItems});

  @override
  Widget build(BuildContext context){
    return Expanded(
      child: GridView.count(
        mainAxisSpacing: 20.0,
        crossAxisSpacing: 20.0,
        crossAxisCount: 4,
        children: [
          for (var m in myItems)GestureDetector(
            onTap: () =>
                context.go
                  (slash + m),
            child: Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    m,
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Column _buildButtonColumn(Color color, IconData icon, String label) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Icon(icon, color: color),
      Container(
        margin: const EdgeInsets.only(top: 8),
        child: Text(
          label,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: color,
          ),
        ),
      ),
    ],
  );
}

Widget buildButtonSection(BuildContext context){
  Color color = Theme.of(context).primaryColor;
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      _buildButtonColumn(color, Icons.call, 'CALL'),
      _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
      _buildButtonColumn(color, Icons.share, 'SHARE'),
    ],
  );
}

Widget textSection = const Padding(
  padding: EdgeInsets.all(32),
  child: Text(
    '',
    softWrap: true,
  ),
);


