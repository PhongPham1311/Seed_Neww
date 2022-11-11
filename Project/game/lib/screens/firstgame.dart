import 'package:flutter/material.dart';
import 'package:seed_new/screens/main_game.dart';
class Firstgame extends StatefulWidget {
  const Firstgame({super.key});

  @override
  State<Firstgame> createState() => _FirstgameState();
}

class _FirstgameState extends State<Firstgame> {
  @override
  Widget build(BuildContext context) {
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
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    alignment: Alignment.centerRight,
                    child: Image.asset(
                      'img/in4.png',
                      width: 200,
                      height: 200,
                    ),
                  ),
                  const Positioned(
                    top: 80,
                    right: 35,
                    child: Text(
                      'SEED NEW',
                      style: TextStyle(
                        shadows: [
                          Shadow(
                            offset: Offset(5, 3),
                            blurRadius: 10,
                            color: Colors.black,
                          ),
                        ],
                        color: Colors.yellow,
                        fontFamily: 'Coppper',
                        fontSize: 13,
                      ),
                    ),
                  ),
                  const Positioned(
                    top: 120,
                    right: 70,
                    child: Text(
                      'FLUTTER',
                      style: TextStyle(
                        shadows: [
                          Shadow(
                            offset: Offset(5, 3),
                            blurRadius: 10,
                            color: Colors.black,
                          ),
                        ],
                        color: Colors.yellow,
                        fontFamily: 'Coppper',
                        fontSize: 13,
                      ),
                    ),
                  ),
                  const Positioned(
                    top: 165,
                    right: 35,
                    child: Text(
                      'CDTHPM20C',
                      style: TextStyle(
                        shadows: [
                          Shadow(
                            offset: Offset(5, 3),
                            blurRadius: 10,
                            color: Colors.black,
                          ),
                        ],
                        color: Colors.yellow,
                        fontFamily: 'Coppper',
                        fontSize: 13,
                      ),
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  //stack dùng để làm cho các con trong stack có thể chồng lên nhau
                  Stack(
                    children: [
                      Container(
                          width: 360,
                          height: 270,
                          child: Container(
                            alignment: Alignment.topLeft,
                            width: 150,
                            height: 50,
                            child: Stack(children: [
                              Positioned(left: 20,
                                child: Image.asset(
                                  'img/logintoptb.png',
                                  height: 70,
                                  width: 150,
                                ),
                              ),
                              //positon được dùng trong widget stack dùng để chỉnh vị trí của witget con của positon ở vị trí mong muốn
                              const Positioned(
                                top: 30,
                                left: 45,
                                child: Text(
                                  'TÊN NHÂN VẬT',
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
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600),
                                ),
                              )
                            ]),
                          )),
                      Positioned(
                        top: 62.0,
                        right: 0.0,
                        left: 0.0,
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                            alignment: Alignment.center,
                            height: 100,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('img/table.png'),
                                    fit: BoxFit.fill)),
                            child: Container(
                              padding: const EdgeInsets.fromLTRB(0, 15, 0, 30),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    'Tên đăng nhập',
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
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  SizedBox(
                                    height: 30,
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
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(5.0)),
                                        ),
                                        fillColor: Color(0xffFF8C4B),
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(5.0)),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )),
                      ),
                      Positioned(
                        top: 155,
                        child: Container(
                          margin: const EdgeInsets.only(left: 40),
                          padding: const EdgeInsets.only(top: 10),
                          alignment: Alignment.center,
                          width: 200,
                          height: 60,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('img/in4small.png'),
                                  fit: BoxFit.fill)),
                          child: const Text(
                            'Lưu ý: \n Tên nhân vật không quá 10 ký tự',
                            style: TextStyle(
                                shadows: [
                                  Shadow(
                                    offset: Offset(5, 3),
                                    blurRadius: 10,
                                    color: Colors.black,
                                  ),
                                ],
                                color: Colors.yellow,
                                fontFamily: 'Mono',
                                fontSize: 12,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 170,
                        left: 250,
                        child: InkWell(
                          child: Container(
                            width: 100,
                            height: 40,
                            alignment: Alignment.center,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('img/arrowright.png'),
                                    fit: BoxFit.fill)),
                            child: const Text(
                              'Tiếp Tục',
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
                      MaterialPageRoute(builder: (context) => const MainGame()));
                          },
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
