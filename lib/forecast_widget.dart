import 'package:flutter/material.dart';

class Forecast extends StatelessWidget {
  final double time;
  final IconData ico;
  final double val;
  const Forecast({
    super.key,
    required this.ico,
    required this.time,
    required this.val,
  });

  @override
  Widget build(BuildContext context) {
    return  Card(
      child: SizedBox(
        width: 100,
        height: 100,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              time.toString(),
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Icon(
              ico,
              size: 34,
            ),
            Text(val.toString()),
          ],
        ),
      ),
    );
  }
}