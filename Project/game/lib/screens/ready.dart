import 'package:flutter/material.dart';
import'outmatch.dart';
class Ready extends StatefulWidget {
  const Ready({super.key});

  @override
  State<Ready> createState() => _ReadyState();
}

class _ReadyState extends State<Ready> {
  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset:
          false, //khi bàn phím xuất hiện sẽ không làm vỡ layout của giao diện
      body: Container(
        width: _width,
        height: _height,
        padding: EdgeInsets.only(bottom: 30),
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('img/background2.png'), fit: BoxFit.fill),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.center,
              width: _width,
              height: _height - (_height - _height / 3.3),
              child: const Text(
                'ĐÃ TÌM THẤY TRẬN...',
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
                    fontSize: 20,
                    fontWeight: FontWeight.w800),
              ),
            ),
            Stack(
              children: [
                Container(
                  width: _width,
                  height: _height - (_height - _height / 1.75),
                ),
                Positioned(
                  top: 20,
                  left: 5,
                  child: Stack(
                    children: [
                      Container(
                        height: 120,
                        width: 280,
                      ),
                      Positioned(
                        top: 10,
                        child: Container(
                          width: 280,
                          height: 110,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('img/leftframe.png'),
                                fit: BoxFit.fill),
                          ),
                        ),
                      ),
                      const Positioned(
                        left: 20,
                        top: 0,
                        child: CircleAvatar(
                          backgroundImage: AssetImage('img/avatar.jpg'),
                          radius: 35,
                        ),
                      ),
                      const Positioned(
                        top: 35,
                        left: 100,
                        child: Text(
                          'user_name',
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
                              fontSize: 17,
                              fontWeight: FontWeight.w800),
                        ),
                      ),
                      const Positioned(
                        top: 60,
                        left: 90,
                        child: Text(
                          'Lớp lá',
                          style: TextStyle(
                              shadows: [
                                Shadow(
                                  offset: Offset(5, 3),
                                  blurRadius: 10,
                                  color: Colors.black,
                                ),
                              ],
                              color: Color.fromARGB(255, 241, 244, 54),
                              fontFamily: 'Mono',
                              fontSize: 13,
                              fontWeight: FontWeight.w800),
                        ),
                      )
                    ],
                  ),
                ),
                Positioned(
                  top: (_height - (_height - _height / 1.75)) / 3.2,
                  right: _width / 2.2,
                  child: const Text(
                    'VS',
                    style: TextStyle(
                        shadows: [
                          Shadow(
                            offset: Offset(5, 3),
                            blurRadius: 10,
                            color: Colors.black,
                          ),
                        ],
                        color: Color.fromARGB(255, 241, 244, 54),
                        fontFamily: 'Mono',
                        fontSize: 30,
                        fontWeight: FontWeight.w800),
                  ),
                ),
                Positioned(
                  top: 160,
                  right: 5,
                  child: Stack(
                    children: [
                      Container(
                        height: 120,
                        width: 280,
                      ),
                      Positioned(
                        top: 10,
                        child: Container(
                          width: 280,
                          height: 110,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('img/rightframe.png'),
                                fit: BoxFit.fill),
                          ),
                        ),
                      ),
                      const Positioned(
                        right: 20,
                        top: 0,
                        child: CircleAvatar(
                          backgroundImage: AssetImage('img/avatar.jpg'),
                          radius: 35,
                        ),
                      ),
                      const Positioned(
                        top: 35,
                        right: 100,
                        child: Text(
                          'user_name',
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
                              fontSize: 17,
                              fontWeight: FontWeight.w800),
                        ),
                      ),
                      const Positioned(
                        top: 60,
                        right: 90,
                        child: Text(
                          'Lớp lá',
                          style: TextStyle(
                              shadows: [
                                Shadow(
                                  offset: Offset(5, 3),
                                  blurRadius: 10,
                                  color: Colors.black,
                                ),
                              ],
                              color: Color.fromARGB(255, 241, 244, 54),
                              fontFamily: 'Mono',
                              fontSize: 13,
                              fontWeight: FontWeight.w800),
                        ),
                      )
                    ],
                  ),
                ),
                Positioned(
                  right: _width / 2.5,
                  bottom: 30,
                  child: Container(
                    alignment: Alignment.center,
                    width: 80,
                    height: 80,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('img/round.png'), fit: BoxFit.fill),
                    ),
                    child: const Text(
                      '14',
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
                          fontSize: 18,
                          fontWeight: FontWeight.w800),
                    ),
                  ),
                )
              ],
            ),
            Container(
              width: 150,
              height: 60,
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('img/button1.png'), fit: BoxFit.fill)),
              child: InkWell(
                child: const Text(
                  'Sẵn Sàng',
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
                onTap: () {
                   Navigator.pop(context);
                   Navigator.pop(context);
                  
                    Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const OutMatch()));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
