import 'package:flutter/material.dart';

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      appBar: AppBar(
        title: const Text(
          'Weather App',
          style: TextStyle(color: Colors.black54),
        ),
        centerTitle: true,
        // backgroundColor: Colors.black,
        elevation: 4,
        actions: [
          IconButton(
            onPressed: () {
              print('refreshed');
            },
            icon: const Icon(Icons.refresh),
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(5),
        child: Column(
          children: [
            Card(
                elevation: 23,
                // color:Colors.black,
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(12),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Weather App",
                        style: TextStyle(
                            fontSize: 34, fontWeight: FontWeight.bold),
                      ),
                      Icon(
                        Icons.cloud,
                        size: 65,
                        // color: Colors.white,
                      ),
                      Text(
                        'Rain',
                        style: TextStyle(fontSize: 44),
                      ),
                    ],
                  ),
                )),
            const SizedBox(
              height: 20,
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Forecast Live',
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            //FOrecase Row Start overhere
             const SingleChildScrollView(
               scrollDirection:Axis.horizontal,
               child: Row(
                children: [
                  Forecast(),
                  Forecast(),
                  Forecast(),
                  Forecast(),
                  Forecast(),
                  Forecast(),
                  Forecast(),
                  Forecast(),
                  Forecast(),
                ],
                           ),
             )
          ],
        ),
      ),
    );
  }
}

class Forecast extends StatelessWidget {
  const Forecast({super.key});

  @override
  Widget build(BuildContext context) {
    return const  Card(
      child: SizedBox(
        width:100,
        height: 100,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('45.34',style: TextStyle(fontSize: 20,fontWeight:FontWeight.bold),),
            Icon(Icons.cloud,size: 34,),
            Text('78.45'),
          ],
        ),
      ),
    );
  }
}

