import 'package:flutter/material.dart';
import 'package:flutter_weather_app/additional.dart';
import 'package:flutter_weather_app/forecast_widget.dart';

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
              // print('refreshed');
            },
            icon: const Icon(Icons.refresh),
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
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
                        "30°",
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
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Forecast(
                    time:2.34,
                    ico:Icons.cloud,
                    val:42.23,
                  ),
                  Forecast(
                    time:3.34,
                    ico:Icons.sunny,
                    val:42.23,
                  ),
                  Forecast(
                    time:4.34,
                    ico:Icons.cloud,
                    val:42.23,
                  ),
                  Forecast(
                    time:5.34,
                    ico:Icons.cloud,
                    val:42.23,
                  ),
                  Forecast(
                    time:6.34,
                    ico:Icons.sunny,
                    val:42.23,
                  ),
                ],
              ),
            ),
            //Start Additional Ending Section
            const SizedBox(
              height: 30,
            ),
            const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Windy Information',
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold,fontFamily:'Courier'),
                )),
            const SizedBox(
              height: 20,
            ),
        Container(
          width: double.infinity,
          padding: EdgeInsets.all(22),
          // color: Colors.black,
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Additional(
                icon:Icons.water_drop,
                label:'Humanaid',
                num:89,
              ),
              Additional(
                icon:Icons.air,
                label:'air',
                num:89,
              ),
              Additional(
                icon:Icons.sunny,
                label:'Synny',
                num:89,
              ),
            ],
          ),
        )


          ],
        ),
      ),
    );
  }
}



