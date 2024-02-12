import 'package:flutter/material.dart';

class Additional extends StatelessWidget {
  final IconData icon;
  final String label;
  final double num;
  const Additional({
    super.key,
    required this.icon,
    required this.label,
    required this.num,
  });

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Icon(icon,size: 44,color: Colors.white,),
        Text(label,style: TextStyle(color:Colors.white,fontSize: 25),),
        Text(num.toString(),style: TextStyle(color:Colors.white,fontSize: 25)),
      ],
    );

  }
}
