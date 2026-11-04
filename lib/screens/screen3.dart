import 'package:flutter/material.dart';

class Screen3 extends StatelessWidget {
  const Screen3({super.key});

  final Map<String, String> minecraft = const {
    'minecraft1':'assets/imgs/minecraft1.png',
    'minecraft2':'assets/imgs/minecraft2.png',
    'minecraft3':'assets/imgs/minecraft3.png',
    'minecraft4':'assets/imgs/minecraft4.png',
    'minecraft5':'assets/imgs/minecraft5.png',
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Ventana 3'),),
      body: ListView(
        children: [
          ...minecrafts.map((minecraft)=>ListTile(
            leading: Icon(Icons.check_box_outline_blank_rounded),
            title: Text(minecraft),
            subtitle: Text('Un gran juego'),
            trailing: Icon(Icons.arrow_forward),
            tileColor: Color.fromARGB(159, 249, 250, 249),
            iconColor: const Color.fromARGB(255, 25, 137, 15),
            textColor: const Color.fromARGB(255, 119, 70, 18),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            )
          ),
          ),
          Divider(),
          ...hollows.map((hollow)=>ListTile(
            leading: Icon(Icons.campaign_rounded),
            title: Text(hollow),
            subtitle: Text('El mejor juego indie'),
            trailing: Icon(Icons.arrow_forward),
            tileColor: Color.fromARGB(159, 249, 250, 249),
            iconColor: const Color.fromARGB(255, 76, 82, 76),
            textColor: const Color.fromARGB(255, 35, 28, 22),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            )
          ),
          ),

        ],
      ),
    );
  }

  Widget _tileDog(
    String dogName,
    String dogImage,
    Color tileColor,
    Color iconColor,
    Color textColor
  ){
    final tile = ListTile(
            leading: Image.asset(dogImage,width: 50, height: 50,),
            title: Text(dogName),
            subtitle: Text('Un gran juego'),
            trailing: Icon(Icons.arrow_forward),
            tileColor: tileColor,
            iconColor: iconColor,
            textColor: textColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            )
          );
  }
}