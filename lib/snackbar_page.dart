import 'package:flutter/material.dart';

class SnackBarPage extends StatelessWidget{
  const SnackBarPage({super.key});

  @override
  Widget build(BuildContext context){
      return Center(
        child: ElevatedButton(
          onPressed:(){
              final snackBar = SnackBar(
                content: const Text("Product does not exist!"),
                action: SnackBarAction(
                  label: 'Undo',
                  onPressed:(){
                    //some code to undo the change
                  },
                ),
              );
              //Find the ScaffoldMessenger in the widget tree
              //and use it to show a SnackBar
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          },
            child: const Text('Show Snackbar'),
        ),
      );
    }
  }
