import 'package:flutter/material.dart';

class HomeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: CustomClip(),
      child: Container(
        color: Colors.tealAccent,
      ),
    );
  }
}

class CustomClip extends CustomClipper<Path> {


  @override
  Path getClip(Size size) {
    var path = Path();

    path.lineTo(0.0, size.height);
    // path.lineTo(size.width, size.height/2);

    var pointControl = Offset(size.width - 70, size.height /2);
    var endPointControl = Offset(0,0);

    path.quadraticBezierTo(
      pointControl.dx,
      pointControl.dy,
      endPointControl.dx,
      endPointControl.dy
    );

    
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return oldClipper != this;
  }
  
}