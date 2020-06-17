import 'package:flutter/material.dart';
import 'package:mypanoramapp/src/components/panorama_component.dart';
import 'package:mypanoramapp/src/components/rounded_button.dart';
import 'package:mypanoramapp/src/constants/constants.dart';

class CardImage extends StatelessWidget {

  final String text;
  final String imageRoute;

  const CardImage({
    Key key,
    this.text, 
    this.imageRoute,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final card = Container(
      child: Column(
        children: <Widget>[
          FadeInImage(
            placeholder: AssetImage(KRoutePlaceHolderImage), 
            image: AssetImage(imageRoute),
            height: 300.0,
            fit: BoxFit.cover,
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
            child: Text(text),
          ),
          RoundedButton(
            press: (){
              Navigator.push(
                context, 
                 MaterialPageRoute(
                   builder: (context) => PanoramaContainer(
                     imageRoute: imageRoute,
                   )
                 )
              );
            },
            text: 'Ver',
            color: Colors.blue,
          ),
        ],
      ),
    );

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        color: Colors.white,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10.0,
            spreadRadius: 3.0,
            offset: Offset(3, 3),
          )
        ]
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30.0),
        child: card,
      ),
    );
  }
}