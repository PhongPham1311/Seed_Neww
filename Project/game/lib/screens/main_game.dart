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

_ontapchangename(BuildContext context) {
  return Material(
    color: const Color(0x00000000),
    child: Stack(
      alignment: Alignment.topCenter,
      children: [
        Positioned(
          top: 300.0,
          child: Container(
              margin: const EdgeInsets.only(
                left: 10,
              ),
              height: 200,
              width: 340,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('img/frame2.png'), fit: BoxFit.fill)),
              child: Container(
                margin: EdgeInsets.fromLTRB(50, 50, 50, 70),
                height: 100,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    Text(
                      textAlign: TextAlign.center,
                      'Nhập Tên Mới:',
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
                          fontSize: 15,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 40,
                      width: 220,
                      child: TextField(
                        cursorColor: Colors.black,
                        cursorWidth: 3,
                        cursorHeight: 20,
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Mono',
                            fontSize: 15,
                            fontWeight: FontWeight.w600),
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Color(0xffFF8C4B),
                          focusedBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(5.0)),
                          ),
                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(5.0)),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )),
        ),
        Positioned(
            top: 250,
            child: Container(
              alignment: Alignment.center,
              width: 280,
              height: 90,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('img/frame1.png'), fit: BoxFit.fill),
              ),
              child: const Text(
                'Đổi Tên Nhân Vật',
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
                    fontSize: 15,
                    fontWeight: FontWeight.w800),
              ),
            )),
        Positioned(
          top: 460,
          child: Container(
            width: 100,
            height: 50,
            alignment: Alignment.center,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('img/button1.png'), fit: BoxFit.fill)),
            child: InkWell(
              child: const Text(
                'Lưu',
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
              onTap: () {},
            ),
          ),
        ),
        Positioned(
            top: 280,
            right: 5,
            child: InkWell(
              child: Image.asset(
                'img/cancelbutton.png',
                width: 50,
                height: 50,
              ),
              onTap: () {
                Navigator.pop(context);
              },
            )),
      ],
    ),
  );
}

_ontapviewprofile(BuildContext context) {
  return Material(
    color: const Color(0x00000000),
    child: Stack(
      alignment: Alignment.topCenter,
      children: [
        Positioned(
          top: 60.0,
          child: Container(
              padding: const EdgeInsets.fromLTRB(10, 0, 0, 100),
              height: 650,
              width: 340,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('img/frame2.png'), fit: BoxFit.fill)),
              child: Container(
                margin: EdgeInsets.fromLTRB(20, 80, 20, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(90, 0, 90, 0),
                      alignment: Alignment.center,
                      child: Stack(
                        children: [
                          const CircleAvatar(
                            backgroundImage: AssetImage('img/avatar.jpg'),
                            radius: 40,
                          ),
                          Positioned(
                            top: 60,
                            right: 0,
                            child: InkWell(
                              child: Image.asset(
                                'img/iconchangename.png',
                                width: 20,
                                height: 20,
                              ),
                              onTap: () {
                                showDialog(
                                    context: context,
                                    builder: (context) =>
                                        _ontapchangeavatar(context));
                              },
                            ),
                          )
                        ],
                      ),
                    ),
                    const Text(
                      'User_Name',
                      style: TextStyle(
                          shadows: [
                            Shadow(
                              offset: Offset(5, 3),
                              blurRadius: 10,
                              color: Colors.black,
                            ),
                          ],
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontFamily: 'Mono',
                          fontSize: 15,
                          fontWeight: FontWeight.w800),
                    ),
                    const Text(
                      'Cấp 15',
                      style: TextStyle(
                          shadows: [
                            Shadow(
                              offset: Offset(5, 3),
                              blurRadius: 10,
                              color: Colors.black,
                            ),
                          ],
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontFamily: 'Mono',
                          fontSize: 15,
                          fontWeight: FontWeight.w800),
                    ),
                    Container(
                      width: 110,
                      height: 40,
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('img/button4.png'),
                              fit: BoxFit.fill)),
                      child: const Text(
                        'Danh Hiệu',
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
                            fontSize: 15,
                            fontWeight: FontWeight.w800),
                      ),
                    ),
                    Container(
                      width: 350,
                      height: 135,
                      alignment: Alignment.center,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Đối Kháng Ngẫu Nhiên',
                            style: TextStyle(
                                color: Color.fromARGB(255, 0, 0, 0),
                                fontFamily: 'Mono',
                                fontSize: 18,
                                fontWeight: FontWeight.w800),
                          ),
                          Container(
                            width: 270,
                            height: 100,
                            padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                            alignment: Alignment.center,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('img/buttonhome.png'),
                                    fit: BoxFit.fill)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: const [
                                    Text(
                                      'SỐ TRẬN',
                                      style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 245, 196, 0),
                                          fontFamily: 'Mono',
                                          fontSize: 17,
                                          fontWeight: FontWeight.w800),
                                    ),
                                    Text(
                                      '99 TRẬN',
                                      style: TextStyle(
                                          color: Color.fromARGB(
                                              255, 242, 197, 116),
                                          fontFamily: 'Mono',
                                          fontSize: 15,
                                          fontWeight: FontWeight.w800),
                                    ),
                                  ],
                                ),
                                Container(
                                  color: Color.fromARGB(255, 255, 244, 212),
                                  width: 2,
                                  height: 50,
                                ),
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: const [
                                    Text(
                                      'TỶ LỆ THẮNG',
                                      style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 245, 196, 0),
                                          fontFamily: 'Mono',
                                          fontSize: 17,
                                          fontWeight: FontWeight.w800),
                                    ),
                                    Text(
                                      '99%',
                                      style: TextStyle(
                                          color: Color.fromARGB(
                                              255, 242, 197, 116),
                                          fontFamily: 'Mono',
                                          fontSize: 15,
                                          fontWeight: FontWeight.w800),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 350,
                      height: 135,
                      alignment: Alignment.center,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Tự Luyện',
                            style: TextStyle(
                                color: Color.fromARGB(255, 0, 0, 0),
                                fontFamily: 'Mono',
                                fontSize: 18,
                                fontWeight: FontWeight.w800),
                          ),
                          Container(
                            width: 270,
                            height: 100,
                            padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                            alignment: Alignment.center,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('img/buttonhome.png'),
                                    fit: BoxFit.fill)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: const [
                                    Text(
                                      'SỐ TRẬN',
                                      style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 245, 196, 0),
                                          fontFamily: 'Mono',
                                          fontSize: 17,
                                          fontWeight: FontWeight.w800),
                                    ),
                                    Text(
                                      '99 TRẬN',
                                      style: TextStyle(
                                          color: Color.fromARGB(
                                              255, 242, 197, 116),
                                          fontFamily: 'Mono',
                                          fontSize: 15,
                                          fontWeight: FontWeight.w800),
                                    ),
                                  ],
                                ),
                                Container(
                                  color: Color.fromARGB(255, 255, 244, 212),
                                  width: 2,
                                  height: 50,
                                ),
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: const [
                                    Text(
                                      'ĐIỂM CAO NHẤT',
                                      style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 245, 196, 0),
                                          fontFamily: 'Mono',
                                          fontSize: 17,
                                          fontWeight: FontWeight.w800),
                                    ),
                                    Text(
                                      '1280',
                                      style: TextStyle(
                                          color: Color.fromARGB(
                                              255, 242, 197, 116),
                                          fontFamily: 'Mono',
                                          fontSize: 15,
                                          fontWeight: FontWeight.w800),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )),
        ),
        Positioned(
            top: 30,
            child: Container(
              alignment: Alignment.center,
              width: 280,
              height: 90,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('img/frame1.png'), fit: BoxFit.fill),
              ),
              child: const Text(
                'Trang Cá Nhân',
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
            )),
        Positioned(
            top: 40,
            right: 5,
            child: InkWell(
              child: Image.asset(
                'img/cancelbutton.png',
                width: 50,
                height: 50,
              ),
              onTap: () {
                Navigator.pop(context);
              },
            )),
      ],
    ),
  );
}

_ontapchangeavatar(BuildContext context) {
  return Material(
    color: const Color(0x00000000),
    child: Stack(
      alignment: Alignment.topCenter,
      children: [
        Positioned(
          top: 200.0,
          child: Container(
              padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
              height: 400,
              width: 340,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('img/frame2.png'), fit: BoxFit.fill)),
              child: Container(
                margin: EdgeInsets.fromLTRB(15, 40, 20, 80),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(8),
                          width: 80,
                          height: 80,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('img/frame3.png'),
                                  fit: BoxFit.fill)),
                          child: Image.asset(
                            'img/avatar.jpg',
                            fit: BoxFit.fill,
                          ),
                        )
                      ],
                    ),
                    Container(
                      height: 180,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                padding: EdgeInsets.all(8),
                                width: 80,
                                height: 80,
                                decoration: const BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage('img/frame3.png'),
                                        fit: BoxFit.fill)),
                                child: Image.asset(
                                  'img/avatar.jpg',
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(8),
                                width: 80,
                                height: 80,
                                decoration: const BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage('img/frame3.png'),
                                        fit: BoxFit.fill)),
                                child: Image.asset(
                                  'img/avatar.jpg',
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(8),
                                width: 80,
                                height: 80,
                                decoration: const BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage('img/frame3.png'),
                                        fit: BoxFit.fill)),
                                child: Image.asset(
                                  'img/avatar.jpg',
                                  fit: BoxFit.fill,
                                ),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                padding: EdgeInsets.all(8),
                                width: 80,
                                height: 80,
                                decoration: const BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage('img/frame3.png'),
                                        fit: BoxFit.fill)),
                                child: Image.asset(
                                  'img/avatar.jpg',
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(8),
                                width: 80,
                                height: 80,
                                decoration: const BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage('img/frame3.png'),
                                        fit: BoxFit.fill)),
                                child: Image.asset(
                                  'img/avatar.jpg',
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(8),
                                width: 80,
                                height: 80,
                                decoration: const BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage('img/frame3.png'),
                                        fit: BoxFit.fill)),
                                child: Image.asset(
                                  'img/avatar.jpg',
                                  fit: BoxFit.fill,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              )),
        ),
        Positioned(
            top: 190,
            right: 5,
            child: InkWell(
              child: Image.asset(
                'img/cancelbutton.png',
                width: 50,
                height: 50,
              ),
              onTap: () {
                Navigator.pop(context);
              },
            )),
        Positioned(
          top: 565,
          child: Container(
            width: 100,
            height: 50,
            alignment: Alignment.center,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('img/button1.png'), fit: BoxFit.fill)),
            child: InkWell(
              child: const Text(
                'Lưu',
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
              onTap: () {},
            ),
          ),
        ),
      ],
    ),
  );
}

class _ontapsetting extends StatefulWidget {
  const _ontapsetting({super.key});

  @override
  State<_ontapsetting> createState() => __ontapsettingState();
}

class __ontapsettingState extends State<_ontapsetting> {
  double _valuesound = 0;
  double _valuemusic = 0;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: const Color(0x00000000),
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Positioned(
            top: 150.0,
            child: Container(
                padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                height: 400,
                width: 360,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('img/frame4.png'), fit: BoxFit.fill)),
                child: Container(
                  margin: const EdgeInsets.fromLTRB(50, 80, 50, 80),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            '    Âm Thanh',
                            style: TextStyle(
                                shadows: [
                                  Shadow(
                                    offset: Offset(5, 3),
                                    blurRadius: 10,
                                    color: Colors.black,
                                  ),
                                ],
                                color: Color.fromARGB(255, 255, 255, 255),
                                fontFamily: 'Mono',
                                fontSize: 15,
                                fontWeight: FontWeight.w800),
                          ),
                          Row(
                            children: [
                              Image.asset(
                                'img/sound.png',
                                height: 50,
                                width: 50,
                              ),
                              Slider(
                                min: 0.0,
                                max: 100.0,
                                activeColor: Color.fromARGB(255, 107, 226, 9),
                                inactiveColor:
                                    Color.fromARGB(255, 255, 255, 255),
                                thumbColor: Color.fromARGB(255, 107, 226, 9),
                                value: _valuesound,
                                onChanged: (value) {
                                  setState(() {
                                    _valuesound = value;
                                  });
                                },
                              )
                            ],
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            '    Nhạc Nền',
                            style: TextStyle(
                                shadows: [
                                  Shadow(
                                    offset: Offset(5, 3),
                                    blurRadius: 10,
                                    color: Colors.black,
                                  ),
                                ],
                                color: Color.fromARGB(255, 255, 255, 255),
                                fontFamily: 'Mono',
                                fontSize: 15,
                                fontWeight: FontWeight.w800),
                          ),
                          Row(
                            children: [
                              Image.asset(
                                'img/music.png',
                                height: 50,
                                width: 50,
                              ),
                              
                            ],
                          ),
                        ],
                      ),
                      Container(
                        width: 180,
                        height: 60,
                        alignment: Alignment.center,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('img/button4.png'),
                                fit: BoxFit.fill)),
                        child: const Text(
                          'LUẬT CHƠI',
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
                              fontSize: 18,
                              fontWeight: FontWeight.w800),
                        ),
                      ),
                    ],
                  ),
                )),
          ),
          Positioned(
              top: 135,
              right: 15,
              child: InkWell(
                child: Image.asset(
                  'img/cancelbutton.png',
                  width: 50,
                  height: 50,
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              )),
          Positioned(
            top: 510,
            child: Container(
              width: 100,
              height: 50,
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('img/button1.png'), fit: BoxFit.fill)),
              child: InkWell(
                child: const Text(
                  'Lưu',
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
                onTap: () {},
              ),
            ),
          ),
          Positioned(
              top: 120,
              child: Container(
                alignment: Alignment.center,
                width: 200,
                height: 70,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('img/frame1.png'), fit: BoxFit.fill),
                ),
                child: const Text(
                  'Cài Đặt',
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
              )),
        ],
      ),
    );
  }
}
