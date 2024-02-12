import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WeatherApp extends StatelessWidget{
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      appBar: AppBar(
        title:const Text('Weather App',style: TextStyle(color: Colors.black54),),
        centerTitle: true,
        // backgroundColor: Colors.black,
        elevation: 4,
        actions: [
          IconButton(
              onPressed: (){
                print('refreshed');
              },
              icon:const Icon(Icons.refresh),
          )
        ],
      ),
    );
  }

}