//custom bottom navigator created using the video: https://www.youtube.com/watch?v=1ToqYMSnNhA

import 'package:flutter/material.dart';
import 'package:multi_lugha/pallete.dart';
import '../widgets/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

int pageIndex = 0;

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [kPurple_ish, kPurple],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight)),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            appBar: PreferredSize(
                preferredSize: const Size.fromHeight(60), child: getAppBar()),
            body: PreferredSize(
                preferredSize: const Size.fromHeight(60), child: getBody()),
            bottomNavigationBar: getFooter(),
          ),
        ),
      ],
    );
  }

  Widget getAppBar() {
    return AppBar(
      backgroundColor: Colors.transparent,
    );
  }

  Widget getBody() {
    return Stack(
      children: [
        Container(
          child: const ImageCard(
            image:
                'data:image/jpeg;base64,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',
          ),
        ),
        Text('data', style: kBtnText),
      ],
    );
  }

  Widget getFooter() {
    final Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Positioned(
          bottom: 0,
          left: 0,
          child: Container(
            width: size.width,
            height: 80,
            child: Stack(
              children: [
                CustomPaint(
                  size: Size(size.width, 80),
                  painter: BNBCustomPainter(),
                ),
                Center(
                  heightFactor: 0.6,
                  child: FloatingActionButton(
                      onPressed: () {},
                      backgroundColor: Colors.deepPurpleAccent,
                      child: Icon(Icons.home),
                      elevation: 0.1),
                ),
                Container(
                  width: size.width,
                  height: 80,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.bar_chart_sharp),
                        color: Colors.white,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.search),
                        color: Colors.white,
                      ),
                      Container(
                        width: size.width * 0.2,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.notifications),
                        color: Colors.white,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.person),
                        color: Colors.white,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class BNBCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.grey[700]!.withOpacity(0.3)
      ..style = PaintingStyle.fill;
    Path path = Path()..moveTo(0, 20);

    //create a quadratric curve from point 1 to 2 base of point 3
    //reference_point : x1, y1 Destination: x2, y2
    path.quadraticBezierTo(size.width * 0.20, 0, size.width * 0.35, 0);

    //create a quadratric curve from point 2 to 4 base of point 5
    //reference_point: x1, y1 Destination: x2, y2
    path.quadraticBezierTo(size.width * 0.40, 0, size.width * 0.40, 20);

    //draw an arc from point 4 to point 6
    //Offset(destination)
    path.arcToPoint(Offset(size.width * 0.60, 20),
        radius: Radius.circular(10.0), clockwise: false);

    //create a quadratric curve from point 6 to 8 base of point 7
    //reference_point: x1, y1 Destination: x2, y2
    path.quadraticBezierTo(size.width * 0.60, 0, size.width * 0.65, 0);

    //create a quadratric curve from point 8 to 10 base of point 9
    //reference_point: x1, y1 Destination: x2, y2
    path.quadraticBezierTo(size.width * 0.80, 0, size.width, 20);

    //draw a line from point 10 to the bottow W,H
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    //close the remaining section so that it is all filled
    path.close();
    canvas.drawShadow(path, Colors.black, 5, true);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
