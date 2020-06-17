import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mypanoramapp/src/components/background.dart';
import 'package:panorama/panorama.dart';

class PanoramaContainer extends StatelessWidget {

  final String imageRoute;

  const PanoramaContainer({
    Key key, 
    this.imageRoute
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
            appBar:  AppBar(
                centerTitle: true,
                title: Text('Panoramapp'),
            ),
            body: Background(
              child: Panorama(
                  zoom: 0.5,
                  animSpeed: 1.5,
                  sensitivity: 1.5,
                  child: Image.asset(imageRoute),
              )
            ),
            
    );
  }
}
