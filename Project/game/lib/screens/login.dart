import 'package:flutter/material.dart';
import'package:seed_new/screens/firstgame.dart';
class Login extends StatefulWidget {
  const Login({super.key});
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset:
            false, //khi bàn phím xuất hiện sẽ không làm vỡ layout của giao diện
        body: Container(
          padding: const EdgeInsets.only(top: 30),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('img/background.png'), fit: BoxFit.fill),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(margin: EdgeInsets.only(left: MediaQuery.of(context).size.width/2-180),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
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
                    Container(
                      margin: const EdgeInsets.only(left: 27),
                      child: Image.asset(
                        'img/logo.png',
                        width: 200,
                        height: 200,
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  //stack dùng để làm cho các con trong stack có thể chồng lên nhau
                  Stack(
                    children: [
                      Container(
                          width: 300,
                          height: 270,
                          child: Container(
                            alignment: Alignment.topCenter,
                            width: 150,
                            height: 50,
                            child: Stack(children: [
                              Image.asset(
                                'img/logintoptb.png',
                                height: 70,
                                width: 150,
                              ),
                              //positon được dùng trong widget stack dùng để chỉnh vị trí của witget con của positon ở vị trí mong muốn
                              const Positioned(
                                top: 30,
                                left: 25,
                                child: Text(
                                  'ĐĂNG NHẬP',
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
                                      fontWeight: FontWeight.w600),
                                ),
                              )
                            ]),
                          )),
                      Positioned(
                        top: 56.0,
                        right: 0.0,
                        left: 0.0,
                        child: Container(
                            alignment: Alignment.center,
                            height: 200,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('img/logintb.png'),
                                    fit: BoxFit.fill)),
                            child: Container(
                              padding: const EdgeInsets.fromLTRB(10, 30, 0, 30),
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
                                  Text(
                                    'Mật khẩu',
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
                                    height: 40,
                                    width: 220,
                                    child: TextField(
                                      cursorColor: Colors.black,
                                      cursorWidth: 3,
                                      cursorHeight: 20,
                                      obscureText: true,
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontFamily: 'Mono',
                                          fontSize: 15,
                                          fontWeight: FontWeight.w600),
                                      decoration: InputDecoration(
                                        filled: true,
                                        fillColor: Color(0xffFF8C4B),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(5.0)),
                                        ),
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
                    ],
                  ),
                  InkWell(
                    child: Container(
                      width: 150,
                      height: 50,
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('img/table.png'),
                              fit: BoxFit.fill)),
                      child: const Text(
                        'Bắt Đầu',
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
                    onTap: () { Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Firstgame()));},
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
