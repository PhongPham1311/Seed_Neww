import 'package:flutter/material.dart';

class OutMatch extends StatefulWidget {
  const OutMatch({super.key});

  @override
  State<OutMatch> createState() => _OutMatchState();
}

class _OutMatchState extends State<OutMatch> {
  @override
  Widget build(BuildContext context) {
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
                  margin: EdgeInsets.fromLTRB(50, 50, 50, 50),
                  height: 100,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      Text(
                        textAlign: TextAlign.center,
                        'Bạn Chưa Sẵn Sàng',
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
                  'Thông Báo',
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
}
