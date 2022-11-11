import 'package:flutter/material.dart';
import 'ready.dart';
class ScreenWaiting extends StatefulWidget {
  const ScreenWaiting({super.key});

  @override
  State<ScreenWaiting> createState() => _ScreenWaitingState();
}

class _ScreenWaitingState extends State<ScreenWaiting> {
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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                InkWell(
                  child: Image.asset(
                    'img/return.png',
                    width: 50,
                    height: 50,
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
            Container(
              alignment: Alignment.center,
              width: _width,
              height: _height - (_height - 400),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    child: Image.asset(
                      'img/tree.png',
                      width: 200,
                      height: 200,
                    ),
                    onTap: (){
                      Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Ready()));
                    },
                  ),
                  Container(
                    height: _height - (_height - 50),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.max,
                      children: const [
                        Text(
                          'ĐANG TÌM ĐỐI THỦ',
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
                        Text(
                          '1 GIÂY...',
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
                              fontSize: 13,
                              fontWeight: FontWeight.w800),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Row(
                  children: [
                    Image.asset(
                      'img/light.png',
                      height: 50,
                      width: 50,
                    ),
                    const Text(
                      'Mẹo Nhỏ Mách Bạn:',
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
                          fontSize: 13,
                          fontWeight: FontWeight.w800),
                    ),
                  ],
                ),
                const Text(
                  'khi bạn gặp khó khăn trong việc tìm đáp  án có thể dùng xu để mua quyền trợ giúp nhé !!!',
                  textAlign: TextAlign.center,
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
                      fontSize: 11,
                      fontWeight: FontWeight.w600),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}