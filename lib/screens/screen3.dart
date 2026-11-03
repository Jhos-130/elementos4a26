import 'package:flutter/material.dart';

class Screen3 extends StatelessWidget {
  const Screen3({super.key});

  final minecrafts = const[
    'Steve', 'Alex', 'Creper',
  ];

  final hollows = const[
    'knigth', 'hornet', 'Vasija',
  ];

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
}