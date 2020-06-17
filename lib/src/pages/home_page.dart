import 'package:flutter/material.dart';
import 'package:mypanoramapp/src/components/background.dart';
import 'package:mypanoramapp/src/components/card_image_component.dart';
import 'package:mypanoramapp/src/components/rounded_button.dart';


class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size; 

    return Scaffold(         
         appBar:  AppBar(
           centerTitle: true,
           title: Text('Panoramapp'),
         ),
         body: Background(
           child: ListView(
              padding: EdgeInsets.symmetric(vertical: size.height * 0.05, horizontal: size.width * 0.05) ,
              children: _cargarListaImagenes(),
           ),
         ),
    );
  }


  List<Widget> _cargarListaImagenes(){
    
    List<Widget> cardList = new List<Widget>();

    for (var i = 0; i <= 8; i++) {
      final card =  CardImage(
                      imageRoute: 'assets/images/img_0$i.jpg',
                      text: 'Imagen $i',
                    );
      cardList.add(card);
      cardList.add(SizedBox(height: 25.0));
    }
    return cardList;

  }
}