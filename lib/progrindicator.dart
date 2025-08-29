import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Progrindicator extends StatefulWidget {
  const Progrindicator({super.key});
  @override
  State<Progrindicator> createState() => _ProgrindicatorState();
}

class _ProgrindicatorState extends State<Progrindicator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      body: Center(
        child: SpinKitThreeBounce(
          size: 40,
          color: Colors.white,
          // duration: const Duration(seconds: 2),
          // itemBuilder: (context, index) {
          //   final colors = [Colors.white, Colors.pink, Colors.yellow];
          //   final color = colors[index % colors.length];

          //   return DecoratedBox(
          //     decoration: BoxDecoration(color: color, shape: BoxShape.circle),
          //   );
          // },
        ),
      ),
    );
  }
}
