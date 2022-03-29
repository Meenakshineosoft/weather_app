import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
 const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
        return Scaffold(

            body: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage('https://media.istockphoto.com/photos/clouds-aerial-view-picture-id878607638?b=1&k=20&m=878607638&s=170667a&w=0&h=Kaj4ZElLcOMfyzCX-JcYLO_nx_n9M-Ds13HA0VASURA='),
                    fit: BoxFit.cover),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 100,
                  ),
                  const Text("Rockville",
                      style: TextStyle(fontSize: 28, color: Colors.black)),
                  const Text("Cloudy",
                      style: TextStyle(fontSize: 16, color: Colors.black)),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    "75°",
                    style: TextStyle(fontSize: 62, color: Colors.black),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  _day(),
                  _hours(),
                  _cloudList(),
                  _temperatureList(),
                  const Expanded(
                      child: const WeatherList()
                  ),
                ],
                  ),
            ),



            );

  }

  _day() {
    return Row(
      children: const <Widget>[
        Spacer(),
    Text(
    'Sunday',style: TextStyle(fontSize: 14, color: Colors.black)
    ),
    Spacer(),  // Defaults to flex: 1
    Text(
    'Today',style: TextStyle(fontSize: 14, color: Colors.black)
    ),
    Spacer(flex: 7),
        Text(
          '84',style: TextStyle(fontSize: 14, color: Colors.black)
        ),
        Spacer(),
        Text(
          '69',style: TextStyle(fontSize: 14, color: Colors.black)
        ),
        Spacer(),
    ]
    );
  }

  _hours() {
    return Container(
      padding: const EdgeInsets.all(10.0),
      height: 50,
      decoration: const BoxDecoration(
        border: Border(
          top: BorderSide(color: Colors.black),
        )
      ),
       child: ListView(
         scrollDirection: Axis.horizontal,
         children: const <Widget>[
           SizedBox(
             width: 60.0,
             child: Text('Now'),
           ),
           SizedBox(
             width: 60.0,
               child: Text('11 am'),
           ),
           SizedBox(
             width: 60.0,
             child: Text('12 pm'),
           ),
           SizedBox(
             width: 60.0,
             child: Text('1 pm'),
           ),
           SizedBox(
             width: 60.0,
             child: Text('2 pm'),
           ),
           SizedBox(
             width: 60.0,
             child: Text('3 pm'),
           ),
           SizedBox(
             width: 60.0,
             child: Text('4 pm'),
           ),
           SizedBox(
             width: 60.0,
             child: Text('5 pm'),
           ),
         ],

       )
       );

    }

 _cloudList() {
   return Container(
       padding: const EdgeInsets.all(10.0),
       height: 50,
       child: ListView(
         scrollDirection: Axis.horizontal,
         children: const <Widget>[
           SizedBox(
             width: 60.0,
             child: Icon(Icons.cloud),
           ),
           SizedBox(
             width: 60.0,
             child: Icon(Icons.cloud_queue_outlined),
           ),
           SizedBox(
             width: 60.0,
             child: Icon(Icons.cloud),
           ),
           SizedBox(
             width: 60.0,
             child: Icon(Icons.cloud_queue_outlined),
           ),
           SizedBox(
             width: 60.0,
             child: Icon(Icons.cloud),
           ),
           SizedBox(
             width: 60.0,
             child: Icon(Icons.cloud_queue_outlined),
           ),
           SizedBox(
             width: 60.0,
             child: Icon(Icons.cloud),
           ),
           SizedBox(
             width: 60.0,
             child: Icon(Icons.cloud_queue_outlined),
           ),
         ],

       )
   );
 }

 _temperatureList() {
   return Container(
       padding: const EdgeInsets.all(10.0),
       height: 50,
       decoration: const BoxDecoration(
           border: Border(
            // top: BorderSide(color: Colors.black),
              bottom: BorderSide(color: Colors.black)
           )
       ),
       child: ListView(
         scrollDirection: Axis.horizontal,
         children: const <Widget>[
           SizedBox(
             width: 60.0,
             child: Text('23°'),
           ),
           SizedBox(
             width: 60.0,
             child: Text('25°'),
           ),
           SizedBox(
             width: 60.0,
             child: Text('27°'),
           ),
           SizedBox(
             width: 60.0,
             child: Text('28°'),
           ),
           SizedBox(
             width: 60.0,
             child: Text('29°'),
           ),
           SizedBox(
             width: 60.0,
             child: Text('32°'),
           ),
           SizedBox(
             width: 60.0,
             child: Text('35°'),
           ),
           SizedBox(
             width: 60.0,
             child: Text('37°'),
           ),
         ],

       )
   );
 }

 _weeklyWeather() {
   return Container(
       padding: const EdgeInsets.all(10.0),
       height: 450,
       child: ListView(
         scrollDirection: Axis.vertical,
         children: <Widget>[
           Container(
             padding: const EdgeInsets.all(10.0),
             width: 90.0,
             child: const Text('Sunday'),

           ),
           Container(
             padding: const EdgeInsets.all(10.0),
             width: 90.0,
             child: const Text('Monday'),
           ),
           Container(
             padding: const EdgeInsets.all(10.0),
             width: 90.0,
             child: const Text('Tuesday'),
           ),
           Container(
             padding: const EdgeInsets.all(10.0),
             width: 90.0,
             child: const Text('Wednesday'),
           ),
           Container(
             padding: const EdgeInsets.all(10.0),
             width: 90.0,
             child: const Text('Thursday'),
           ),
           Container(
             padding: const EdgeInsets.all(10.0),
             width: 90.0,
             child: const Text('Friday'),
           ),
           Container(
             padding: const EdgeInsets.all(10.0),
             width: 90.0,
             child: const Text('Saturday'),
           ),
         ],

       )
   );

 }

 _weeklyWeatherIcon() {
   return Container(
       padding: const EdgeInsets.all(10.0),
       height: 450,
       child: ListView(
         scrollDirection: Axis.vertical,
         children: <Widget>[
           Container(
             padding: const EdgeInsets.all(10.0),
             width: 90.0,
             child: const Icon(Icons.cloud),
           ),
           Container(
             padding: const EdgeInsets.all(10.0),
             width: 90.0,
             child: const Icon(Icons.cloud_outlined),
           ),
           Container(
             padding: const EdgeInsets.all(10.0),
             width: 90.0,
             child: const Icon(Icons.wb_sunny),
           ),
           Container(
             padding: const EdgeInsets.all(10.0),
             width: 90.0,
             child: const Icon(Icons.wb_sunny_outlined),
           ),
           Container(
             padding: const EdgeInsets.all(10.0),
             width: 90.0,
             child: const Icon(Icons.cloud),
           ),
           Container(
             padding: const EdgeInsets.all(10.0),
             width: 90.0,
             child: const Icon(Icons.wb_sunny),
           ),
           Container(
             padding: const EdgeInsets.all(10.0),
             width: 90.0,
             child: const Icon(Icons.wb_sunny_outlined),
           ),
         ],

       )
   );
 }





 }

 class WeatherList extends StatelessWidget {
  const WeatherList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const <Widget>[
        ListTile( leading: Text("Sunday"),
          title: Icon(Icons.wb_sunny),
          trailing: Text('71'),),
        ListTile( leading: Text("Monday"),title: Icon(Icons.wb_sunny_outlined),trailing: Text('69'),),
        ListTile( leading: Text("Tuesday"),title: Icon(Icons.wb_cloudy),trailing: Text('69'),),
        ListTile( leading: Text("Wednesday"),title: Icon(Icons.wb_cloudy_outlined),trailing: Text('71'),),
        ListTile( leading: Text("Thursday"),title: Icon(Icons.wb_sunny),trailing: Text('69'),),
        ListTile( leading: Text("Friday"),title: Icon(Icons.wb_cloudy_sharp),trailing: Text('69'),),
        ListTile( leading: Text("Saturday"),title: Icon(Icons.wb_sunny),trailing: Text('71'),),
      ],
    );
  }
 }