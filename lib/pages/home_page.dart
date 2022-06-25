import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tic_tac_toe_2/pages/game_settings.dart';

class HomePage extends StatelessWidget{
  HomePage({Key? key}): super(key: key);
  @override
  Widget build(BuildContext context){
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Text(
              'Крестики-нолики',
              style: TextStyle(fontSize: 40, color: Colors.black),
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => GameSettings())
              );
            },
            child: Text('Играть против телефона')
          )
        ],
      ),
    );
  }
}