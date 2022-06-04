import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';

class Model {
  Widget? getWeatherIcon(int condition) {
    if (condition < 300) {
      return SvgPicture.asset(
        'svg/climacon-cloud_lightning.svg',
        color: Colors.black87,
      );
    } else if (condition < 500) {
      return SvgPicture.asset(
        'svg/climacon-cloud_rain.svg',
        color: Colors.black87,
      );
    } else if (condition < 600) {
      return SvgPicture.asset(
        'svg/climacon-cloud_snow_alt.svg',
        color: Colors.black87,
      );
    } else if (condition == 800) {
      return SvgPicture.asset(
        'svg/climacon-sun.svg',
        color: Colors.black87,
      );
    } else if (condition <= 804) {
      return SvgPicture.asset(
        'svg/climacon-cloud_sun.svg',
        color: Colors.black87,
      );
    }
  }

  Widget? FasionIcon(double fas) {
    if (fas < 5) {
      return Image.asset(
        'fasion/-4도.png',
        color: Colors.black87,
      );
    } else if (fas < 9) {
      return Image.asset(
        'fasion/ 5-8도.png',
        color: Colors.black87,
      );
    } else if (fas < 12) {
      return Image.asset(
        'fasion/ 9-11도.png',
        color: Colors.black87,
      );
    } else if (fas < 17) {
      return Image.asset(
        'fasion/12-16도.png',
        color: Colors.black87,
      );
    } else if (fas < 20) {
      return Image.asset(
        'fasion/17-19도.png',
        color: Colors.black87,
      );
    } else if (fas < 23) {
      return Image.asset(
        'fasion/20_22도.png',
        color: Colors.black87,
      );
    } else if (fas < 28) {
      return Image.asset(
        'fasion/23-27도.png',
        color: Colors.black87,
      );
    } else if (fas < 40) {
      return Image.asset(
        'fasion/-28도.png',
        color: Colors.black87,
      );
    }
  }

    Widget? FasionWrite(double fas) {
      if (fas < 5) {
        return Text(
          '패딩, 두꺼우 코트, 목도리, 기모제품',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        );
      } else if (fas < 9) {
        return Text(
          '코트, 가죽자켓, 히트텍, 니트, 레깅스',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        );
      } else if (fas < 12) {
        return Text(
          '자켓, 트렌치코트, 야상, 니트, 청바지',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        );
      } else if (fas < 17) {
        return Text(
          '자켓, 가디건, 야상, 스타킹, 청바지, 면바지',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        );
      } else if (fas < 20) {
        return Text(
          '얇은 니트, 맨투맨, 가디건, 청바지',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        );
      } else if (fas < 23) {
        return Text(
          '얇은 가디건, 긴팔, 면바지, 청바지',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        );
      } else if (fas < 28) {
        return Text(
          '반팔, 얇은 셔츠, 반바지, 면바지',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        );
      } else if (fas < 40) {
        return Text(
          '민소매, 반팔, 원피스, 반바지',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        );
      }
    }

    Widget? assistanceIcon(double ass) {
      if (ass < 10) {
        return Image.asset(
          'assistanceimage/hotpack.png',
          width: 80.0,
          height: 80.0,
        );
      } else if (ass < 20) {
        return Image.asset(
          'assistanceimage/not.png',
          width: 80.0,
          height: 80.0,
        );
      } else if (ass < 30) {
        return Image.asset(
          'assistanceimage/fan.png',
          width: 80.0,
          height: 80.0,
        );
      }
    }

  Widget? assistanceWrite(double ass) {
    if (ass < 10) {
      return Text(
        '  핫팩  ',
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      );
    } else if (ass < 20) {
      return Text(
        '        ',
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      );
    } else if (ass < 30) {
      return Text(
        '휴대용 선풍기',
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      );
    }
  }

    Widget? getAirIcon(int grade) {
      if (grade == 1) {
        return Image.asset(
          'image/good.png',
          width: 37,
          height: 35,
        );
      } else if (grade == 2) {
        return Image.asset(
          'image/fair.png',
          width: 37,
          height: 35,
        );
      } else if (grade == 3) {
        return Image.asset(
          'image/moderate.png',
          width: 37,
          height: 35,
        );
      } else if (grade == 4) {
        return Image.asset(
          'image/poor.png',
          width: 37,
          height: 35,
        );
      } else if (grade == 5) {
        return Image.asset(
          'image/bad.png',
          width: 37,
          height: 35,
        );
      }
    }

    Widget? airIndex(int index) {
      if (index == 1) {
        return Text(
          '"매우좋음"',
          style: TextStyle
            (color: Colors.indigo,
              fontWeight: FontWeight.bold
          ),
        );
      } else if (index == 2) {
        return Text(
          '"좋음"',
          style: TextStyle(
              color: Colors.indigo,
              fontWeight: FontWeight.bold
          ),
        );
      } else if (index == 3) {
        return Text(
          '"보통"',
          style: TextStyle(
              color: Colors.black87,
              fontWeight: FontWeight.bold
          ),
        );
      } else if (index == 4) {
        return Text(
          '"나쁨"',
          style: TextStyle(
              color: Colors.redAccent,
              fontWeight: FontWeight.bold
          ),
        );
      } else if (index == 5) {
        return Text(
          '"매우나쁨"',
          style: TextStyle(
            color: Colors.black87,
            fontWeight: FontWeight.bold,
          ),
        );
      }
    }
  }
