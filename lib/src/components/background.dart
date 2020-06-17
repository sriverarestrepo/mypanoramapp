import 'package:flutter/material.dart';

class Background extends StatelessWidget {
 final Widget child;

 const Background({
    Key key,
    @required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size; 
    return Container(
      height: size.height,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            bottom: 0.0,
            right: 0.0,
            child: Image.asset(
              "assets/images/login_bottom.png", 
              width: size.width * 0.45,
              ),
          ),
          Positioned(
            bottom: 0.0,
            left: 0.0,
            child: Image.asset(
              "assets/images/main_bottom.png", 
              width: size.width * 0.1,
              ),
          ),
          child
        ],
      ),
    );
  }
}