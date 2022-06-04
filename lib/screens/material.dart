import 'package:flutter/material.dart';

class material extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.black12, title: Text('옷 재질 설명')),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black12),
                  borderRadius: BorderRadius.circular(30)),
              child: Text(
                  "면/cotton\n열에 강해 따뜻한 물로 세탁해도 상하거나 줄어드는 일이 없다.\n수건, 속옷과 같은 피부에 직접적으로 닿는 것에 사용된다.\n잘구겨지기때문에 잘 접어서 보관해야한다.",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black12),
                  borderRadius: BorderRadius.circular(30)),
              child: Text(
                  "폴리에스테르/polyester\n내구성이 좋고 가벼우면서 튼튼해 스포츠웨어나 등산복으로 활용된다.\n물에젖어도 모양이 변형되지않기때문에 쿠션이나 침대 커버를 제작할 때에도 사용된다.\n잘 구겨지지 않아 천연섬유의 단점을 보완해줄 수 있다.",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black12),
                  borderRadius: BorderRadius.circular(30)),
              child: Text(
                  "레이온/rayon\n부드럽고 광택이 난다.\n당겼을때 강도가 높아 찢어질 염려가 없고\n촉감이 부드럽고 신축성이 좋아 착용감이 좋다.\n땀을 흡수하는 기능, 정전기가 잘 발생하지 않아 옷 안감으로 자주 사용된다.\n물에 젖으면 강도가 약해져 드라이 클리닝해야한다.",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black12),
                  borderRadius: BorderRadius.circular(30)),
              child: Text(
                  "린넨/linen\n피부에 달라붙지 않아 여름에 자주 착용한다.\n섬유간 공간이 넓어 바람이 잘 통과해 시원하고 땀흡수가 빠르다\n구김이 잘 생긴다.\n까끌거리는 느낌이 난다.",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black12),
                  borderRadius: BorderRadius.circular(30)),
              child: Text("기모/napping\n보온력이 높다.\n땀흡수가 잘 되지 않는다.",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black12),
                  borderRadius: BorderRadius.circular(30)),
              child: Text(
                  "코듀로이(Cprduroy)\n원래는 목면 소재로 두껍게 제작되었지만 근래에는 레이온으로도 제작되고 있다.\n보온성이 높아 재킷이나 외투에 많이 활용된다.\n신축성과 내구성이 뛰어나지만 물이나 습기를 먹으면 옷감이 무거워진다.",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black12),
                  borderRadius: BorderRadius.circular(30)),
              child: Text(
                  "스웨이드\n내구성이 떨어질 수 있으나 부드럽다.\n부드러우면서 얇아서 의류나 섬세한 용도로 많이 쓰이고 안감으로 적합해 많은 곳에 활용된다.\n가격이 비싸면서 탄력이 없고, 쉽게 지저분해 질 수 있고, 물을 쉽게 흡수한다.",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
            ),
          ),
        ],
      ),
    );
  }
}
