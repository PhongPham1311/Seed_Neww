import 'package:flutter/material.dart';
import 'screen_waiting.dart';
import 'challengeme.dart';
class MainGame extends StatefulWidget {
  const MainGame({super.key});

  @override
  State<MainGame> createState() => _MainGameState();
}

class _MainGameState extends State<MainGame> {
  double _valuesound = 10;
  double _valuemusic = 0;

  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    return Scaffold(
        resizeToAvoidBottomInset:
            false, //khi bàn phím xuất hiện sẽ không làm vỡ layout của giao diện
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('img/background1.png'), fit: BoxFit.fill),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Positioned(
                    child: Container(
                      height: _height,
                      padding: EdgeInsets.only(top: 10),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            child: Container(
                              padding: EdgeInsets.only(left: 35),
                              width: 120,
                              height: 50,
                              alignment: Alignment.center,
                              decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage('img/icongold.png'),
                                      fit: BoxFit.fill)),
                              child: const Text(
                                '999',
                                style: TextStyle(
                                    shadows: [
                                      Shadow(
                                        offset: Offset(5, 3),
                                        blurRadius: 10,
                                        color: Colors.black,
                                      ),
                                    ],
                                    color: Colors.white,
                                    fontFamily: 'Mono',
                                    fontSize: 20,
                                    fontWeight: FontWeight.w800),
                              ),
                            ),
                            onTap: () {},
                          ),
                          InkWell(
                            child: Image.asset(
                              'img/setting.png',
                              height: 50,
                              width: 50,
                            ),
                            onTap: () {
                              showDialog(
                                  context: context,
                                  builder: (context) => _ontapsetting());
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 20,
                    child: Container(
                        width: 300,
                        height: 170,
                        alignment: Alignment.centerLeft,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('img/treetable1.png'),
                                fit: BoxFit.fill)),
                        child: Container(
                          margin: EdgeInsets.fromLTRB(12, 86, 0, 0),
                          child: Row(
                            children: [
                              InkWell(
                                child: Image.asset(
                                  'img/avatar.jpg',
                                  width: 55,
                                  height: 60,
                                  fit: BoxFit.fill,
                                ),
                                onTap: () {
                                  showDialog(
                                      context: context,
                                      builder: (context) =>
                                          _ontapviewprofile(context));
                                },
                              ),
                              Container(
                                margin: const EdgeInsets.fromLTRB(25, 0, 0, 0),
                                width: 180,
                                height: 70,
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          child: Column(
                                            children: const [
                                              Text(
                                                'user_name',
                                                style: TextStyle(
                                                    shadows: [
                                                      Shadow(
                                                        offset: Offset(5, 3),
                                                        blurRadius: 10,
                                                        color: Colors.black,
                                                      ),
                                                    ],
                                                    color: Colors.yellowAccent,
                                                    fontFamily: 'Mono',
                                                    fontSize: 15,
                                                    fontWeight:
                                                        FontWeight.w800),
                                              ),
                                              Text(
                                                'level : 15',
                                                style: TextStyle(
                                                    shadows: [
                                                      Shadow(
                                                        offset: Offset(5, 3),
                                                        blurRadius: 10,
                                                        color: Colors.black,
                                                      ),
                                                    ],
                                                    color: Colors.yellowAccent,
                                                    fontFamily: 'Mono',
                                                    fontSize: 12,
                                                    fontWeight:
                                                        FontWeight.w800),
                                              ),
                                            ],
                                          ),
                                        ),
                                        InkWell(
                                          child: Image.asset(
                                            'img/iconchangename.png',
                                            width: 20,
                                            height: 20,
                                          ),
                                          onTap: () {
                                            showDialog(
                                                context: context,
                                                builder: (context) =>
                                                    _ontapchangename(context));
                                          },
                                        )
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          margin:
                                              EdgeInsets.fromLTRB(20, 15, 0, 0),
                                          width: 100,
                                          height: 3,
                                          child: Row(
                                            children: [
                                              Container(
                                                color: Color.fromARGB(
                                                    255, 17, 219, 24),
                                                width: 70,
                                                height: 3,
                                              ),
                                              Container(
                                                color: Colors.white,
                                                width: 30,
                                                height: 3,
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          margin:
                                              EdgeInsets.fromLTRB(5, 15, 0, 0),
                                          child: const Text(
                                            '70/100',
                                            style: TextStyle(
                                                shadows: [
                                                  Shadow(
                                                    offset: Offset(5, 3),
                                                    blurRadius: 10,
                                                    color: Colors.black,
                                                  ),
                                                ],
                                                color: Color.fromARGB(
                                                    255, 9, 223, 16),
                                                fontFamily: 'Mono',
                                                fontSize: 11,
                                                fontWeight: FontWeight.w800),
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        )),
                  ),
                  Positioned(
                    top: 200,
                    child: Container(
                        width: 150,
                        height: 75,
                        alignment: Alignment.centerLeft,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('img/treetable2.png'),
                                fit: BoxFit.fill)),
                        child: Container(
                          width: 100,
                          height: 50,
                          alignment: Alignment.bottomCenter,
                          child: const Text(
                            'Mầm Non',
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Mono',
                                fontSize: 11,
                                fontWeight: FontWeight.w800),
                          ),
                        )),
                  ),
                  Positioned(
                      top: 300,
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            InkWell(
                              child: Container(
                                width: 260,
                                height: 75,
                                alignment: Alignment.center,
                                decoration: const BoxDecoration(
                                    image: DecorationImage(
                                        image:
                                            AssetImage('img/buttonhome1.png'),
                                        fit: BoxFit.fill)),
                                child: const Text(
                                  'Đối Kháng Ngẫu Nhiên',
                                  style: TextStyle(
                                      shadows: [
                                        Shadow(
                                          offset: Offset(5, 3),
                                          blurRadius: 10,
                                          color: Colors.black,
                                        ),
                                      ],
                                      color: Colors.white,
                                      fontFamily: 'Mono',
                                      fontSize: 17,
                                      fontWeight: FontWeight.w800),
                                ),
                              ),
                              onTap: () {
                                Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const ScreenWaiting()));
                              },
                            ),
                            InkWell(
                              child: Container(
                                width: 260,
                                height: 75,
                                alignment: Alignment.center,
                                decoration: const BoxDecoration(
                                    image: DecorationImage(
                                        image:
                                            AssetImage('img/buttonhome1.png'),
                                        fit: BoxFit.fill)),
                                child: const Text(
                                  'Đấu Luyện',
                                  style: TextStyle(
                                      shadows: [
                                        Shadow(
                                          offset: Offset(5, 3),
                                          blurRadius: 10,
                                          color: Colors.black,
                                        ),
                                      ],
                                      color: Colors.white,
                                      fontFamily: 'Mono',
                                      fontSize: 17,
                                      fontWeight: FontWeight.w800),
                                ),
                              ),
                              onTap: () {
                                 Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const ChallengeMe()));
                              },
                            ),
                            InkWell(
                              child: Container(
                                width: 260,
                                height: 75,
                                alignment: Alignment.center,
                                decoration: const BoxDecoration(
                                    image: DecorationImage(
                                        image:
                                            AssetImage('img/buttonhome1.png'),
                                        fit: BoxFit.fill)),
                                child: const Text(
                                  'Xếp Hạng',
                                  style: TextStyle(
                                      shadows: [
                                        Shadow(
                                          offset: Offset(5, 3),
                                          blurRadius: 10,
                                          color: Colors.black,
                                        ),
                                      ],
                                      color: Colors.white,
                                      fontFamily: 'Mono',
                                      fontSize: 17,
                                      fontWeight: FontWeight.w800),
                                ),
                              ),
                              onTap: () {},
                            ),
                            InkWell(
                              child: Container(
                                width: 260,
                                height: 75,
                                alignment: Alignment.center,
                                decoration: const BoxDecoration(
                                    image: DecorationImage(
                                        image:
                                            AssetImage('img/buttonhome1.png'),
                                        fit: BoxFit.fill)),
                                child: const Text(
                                  'Lịch Sử',
                                  style: TextStyle(
                                      shadows: [
                                        Shadow(
                                          offset: Offset(5, 3),
                                          blurRadius: 10,
                                          color: Colors.black,
                                        ),
                                      ],
                                      color: Colors.white,
                                      fontFamily: 'Mono',
                                      fontSize: 17,
                                      fontWeight: FontWeight.w800),
                                ),
                              ),
                              onTap: () {},
                            ),
                            InkWell(
                              child: Container(
                                width: 260,
                                height: 75,
                                alignment: Alignment.center,
                                decoration: const BoxDecoration(
                                    image: DecorationImage(
                                        image:
                                            AssetImage('img/buttonhome1.png'),
                                        fit: BoxFit.fill)),
                                child: const Text(
                                  'Thoát',
                                  style: TextStyle(
                                      shadows: [
                                        Shadow(
                                          offset: Offset(5, 3),
                                          blurRadius: 10,
                                          color: Colors.black,
                                        ),
                                      ],
                                      color: Colors.white,
                                      fontFamily: 'Mono',
                                      fontSize: 17,
                                      fontWeight: FontWeight.w800),
                                ),
                              ),
                              onTap: () {},
                            ),
                          ],
                        ),
                      ))
                ],
              ),
            ],
          ),
        ));
  }
}
