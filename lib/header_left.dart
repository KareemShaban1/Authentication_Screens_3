import 'package:flutter/material.dart';

class HeaderLeft extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: double.infinity,
      child: CustomPaint(
        painter: _HeaderPainter(),
      ),
    );
  }
}

class _HeaderPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
    final paint = new Paint();
    paint.color=Colors.black87;
    paint.style=PaintingStyle.fill;
    paint.strokeWidth=5;

    final path = new Path();

    path.lineTo(size.width, 0);
    path.quadraticBezierTo(size.width *0.15, size.height *0.01, size.width *0.15, size.height *0);

    path.lineTo(size.width*0.15,size.height* 0.5);
    path.quadraticBezierTo(size.width *0.15, size.height *0.01, size.width *0.15, size.height *1.0);

    path.lineTo(0, size.height*1.0);


    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) =>true;

}

