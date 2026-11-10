import 'package:flutter/material.dart';

class Screen3 extends StatelessWidget {
  const Screen3({super.key});

  final Map<String, String> minecrafts = const {
    'minecraft1':'assets/imgs/minecraft1.png',
    'minecraft2':'assets/imgs/minecraft2.png',
    'minecraft3':'assets/imgs/minecraft3.png',
    'minecraft4':'assets/imgs/minecraft4.png',
    'minecraft5':'assets/imgs/minecraft5.png',
  };

  final Map<String, String> hollows = const {
    'Girasoles':'assets/imgs/Girasoles.jpg',
    'Ocelote':'assets/imgs/Ocelote.jpg',
    'Ocelots':'assets/imgs/Ocelots.jpg',
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Ventana 3'),),
      body: ListView(
        children: [
          ...minecrafts.entries.map((minecraft){
            return _tileMine(
              minecraft.key,
              minecraft.value,
              Colors.blueAccent,
              Colors.amberAccent,
              Colors.white,
            );
          }),

          Divider(),
          ...hollows.entries.map((hollow){
            return _tileHoll(
              hollow.key,
              hollow.value,
              const Color.fromARGB(255, 5, 5, 5),
              const Color.fromARGB(255, 7, 92, 211),
              Colors.white,
            );
          }),
        ],
      )
    );
  }

  Widget _tileMine(
    String MineName,
    String MineImage,
    Color tileColor,
    Color iconColor,
    Color textColor
  ){
    final tile = ListTile(
            leading: Image.asset(MineImage,width: 50, height: 50,),
            title: Text(MineName),
            subtitle: Text('Un gran juego'),
            trailing: Icon(Icons.arrow_forward),
            tileColor: tileColor,
            iconColor: iconColor,
            textColor: textColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            )
          );
          final espacio = SizedBox(height: 10);
          return Column(children: [tile, espacio],
          );
  }
  Widget _tileHoll(
    String HollName,
    String HollImage,
    Color tileColor,
    Color iconColor,
    Color textColor,
  ) {
    final tile = ListTile(
      leading: Icon(Icons.campaign_rounded, color: iconColor),

      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(HollImage, width: 60, height: 60),
          const SizedBox(height: 4),
          Text(
            HollName,
            style: TextStyle(color: textColor, fontSize: 16, fontWeight: FontWeight.normal),
          ),
        ],
      ),
      trailing: Icon(Icons.arrow_forward, color: iconColor),
      tileColor: const Color.fromARGB(159, 11, 128, 11),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
    );

    final espacio = SizedBox(height: 10);
    return Column(children: [tile, espacio]);
  }
}