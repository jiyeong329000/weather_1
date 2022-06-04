import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timer_builder/timer_builder.dart';
import 'package:untitled2/model/constants.dart';
import 'package:untitled2/model/model.dart';
import 'package:untitled2/screens/sora.dart';
import 'city_screen.dart';


class WeatherScreen extends StatefulWidget {
  WeatherScreen({this.parseWeatherData, this.parseAirPollution});
  final dynamic parseWeatherData;
  final dynamic parseAirPollution;

  @override
  _WeatherScreenState createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen> {

  Model model = Model();
  String? cityName;
  int? temp;
  String? des;
  Widget? icon;
  Widget? sooyoni;
  Widget? sooyoni2;
  Widget? yeong;
  Widget? yeong2;
  Widget? pollution;
  Widget? quality;
  double? air;
  double? air2;
  var date = DateTime.now();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    updateData(widget.parseWeatherData, widget.parseAirPollution);
  }

  void updateData(dynamic weatherData, dynamic airData) {

      double temp2 = weatherData['main']['temp'].toDouble();
      temp = temp2.toInt();
      cityName = weatherData['name'];
      var condition = weatherData['weather'][0]['id'];
      var grade = airData['list'][0]['main']['aqi'];
      var index = airData['list'][0]['main']['aqi'];
      var fas = weatherData['main']['temp'];
      var ass = weatherData['main']['temp'];
      des = weatherData['weather'][0]['description'];
      icon = model.getWeatherIcon(condition);
      pollution = model.getAirIcon(grade);
      quality = model.airIndex(index);
      sooyoni = model.FasionIcon(fas);
      sooyoni2 = model.FasionWrite(fas);
      yeong = model.assistanceIcon(ass);
      yeong2 = model.assistanceWrite(ass);
      air = airData['list'][0]['components']['pm2_5'];
      air2 = airData['list'][0]['components']['pm10'];
      print(temp);
      print(cityName);
  }

  String getSystemTime() {
    var now = new DateTime.now();
    return new DateFormat("h:mm a").format(now);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        //title: Text('Weather app'),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        centerTitle: true,
        leading: IconButton(
            icon: Icon(
              Icons.near_me,
              size: 30.0,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
          actions: [
            IconButton(
              icon: Image.asset("image/sora.png", width: 35.0, height: 35.0,),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) {
                      return SoraScreen();
                    })
                );
              },
            ),
            IconButton(
              icon: Icon(
                Icons.location_searching,
                size: 30.0,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.push(context,
                  MaterialPageRoute(builder: (context) {
                    return CityScreen();
                  })
                );
              },
            )
          ],
         ),

      body: Container(
          child: Stack(
            children: [
              Image.asset(
                'image/background2.jpg',
                fit: BoxFit.cover,
                height: double.infinity,
                width: double.infinity,
              ),
              Container(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column( //지역이름, 날짜, 옷을 하나의 column으로 묶어줌-1
                            children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 120.0,
                              ),
                              Text(
                                '$cityName',
                                style: GoogleFonts.lato(
                                    fontSize: 35.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  TimerBuilder.periodic(Duration(minutes: 1),
                                      builder: (context) {
                                        print("${getSystemTime()}");
                                        return Text(
                                          "${getSystemTime()}",
                                          style: GoogleFonts.lato(
                                              fontSize: 16.0,
                                              //fontWeight: FontWeight.bold,
                                              color: Colors.white),
                                        );
                                      }),
                                  Text(
                                    DateFormat('- EEEE,').format(date),
                                    textAlign: TextAlign.left,
                                    style: GoogleFonts.lato(
                                        fontSize: 16.0,
                                        //fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                  Text(
                                    DateFormat('d MMM, yyyy').format(date),
                                    textAlign: TextAlign.left,
                                    style: GoogleFonts.lato(
                                        fontSize: 16.0,
                                        //fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 50.0,
                              ),
                              Text(
                                '$temp\u2103',
                                style: GoogleFonts.lato(
                                    fontSize: 70.0,
                                    fontWeight: FontWeight.w300,
                                    color: Colors.white),
                              ),
                              Row(
                                children: [
                                  icon!,
                                  SizedBox(
                                    height: 8.0,
                                    width: 8.0,
                                  ),
                                  Text(
                                    '$des',
                                    style: GoogleFonts.lato(
                                        fontSize: 15.0,
                                        //fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ],
                              ),
                              Row( //Row로 옷과 보조아이템 묶어줘서 가로로 뜨게 함 -2
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: 30.0,
                                    ),
                                    Text(
                                      '                       오늘의 추천 옷은',
                                      style: GoogleFonts.lato(
                                        fontSize: 15.0,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                      ),
                                      Row(
                                        children: [
                                          Column(
                                            children: [
                                              sooyoni!,
                                              SizedBox(width: 10),
                                              sooyoni2!,
                                              SizedBox(width: 10),
                                            ],
                                          )
                                        ],
                                    )
                                  ],
                                )
                              ),
                                  Column(
                                    children: [
                                      SizedBox(
                                        height: 30.0,
                                      ),
                                      Text(
                                        '보조 아이템',
                                        style: GoogleFonts.lato(
                                            fontSize: 15.0,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),
                                      Row(
                                        children: [
                                          Column(
                                            children: [
                                              yeong!,
                                              SizedBox(width: 10),
                                              yeong2!,
                                              SizedBox(width: 10),
                                            ],
                                          )
                                        ],
                                      )
                                    ],
                                  )
                                  ],
                              ) //-2
                            ],
                          )
                         ]
                          ) //-1
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 30.0),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white30)),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Text(
                                  'AQI(대기질 지수)',
                                  style: GoogleFonts.lato(
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                pollution!,
                                SizedBox(
                                  height: 5.0,
                                ),
                                quality!,
                                // Text(
                                //   '$air',
                                //   style: GoogleFonts.lato(
                                //       fontSize: 24.0,
                                //       fontWeight: FontWeight.bold,
                                //       color: Colors.white),
                                // ),
                                // Text(
                                //   '㎍/m3',
                                //   style: GoogleFonts.lato(
                                //       fontSize: 14.0,
                                //       fontWeight: FontWeight.bold,
                                //       color: Colors.white),
                                // ),
                              ],
                            ),
                            Column(
                              children: [
                                Text(
                                  '미세먼지',
                                  style: GoogleFonts.lato(
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Text(
                                  '$air2',
                                  style: GoogleFonts.lato(
                                      fontSize: 24.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                Text(
                                  '㎍/m3',
                                  style: GoogleFonts.lato(
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Text(
                                  '초미세먼지',
                                  style: GoogleFonts.lato(
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  '$air',
                                  style: GoogleFonts.lato(
                                      fontSize: 24.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                Text(
                                  '㎍/m3',
                                  style: GoogleFonts.lato(
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          )),
    );
  }
}

