import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset:
            true, //khi bàn phím xuất hiện sẽ không làm vỡ layout của giao diện
        body: ListView(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('img/background.png'), fit: BoxFit.fill),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width / 2 - 180),
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
                              height: 470,
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
                                    left: 35,
                                    child: Text(
                                      'ĐĂNG KÝ',
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
                            top: 62.0,
                            right: 0.0,
                            left: 0.0,
                            child: Container(
                                alignment: Alignment.center,
                                height: 400,
                                decoration: const BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage('img/registertb.png'),
                                        fit: BoxFit.fill)),
                                child: Container(
                                  padding:
                                      const EdgeInsets.fromLTRB(10, 10, 0, 20),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Text(
                                        'Họ và tên',
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
                                          obscureText: true,
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
                                        'Nhập lại mật khẩu',
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
                                          obscureText: true,
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
                                        'Giới tính',
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
                                        'Số điện thoại',
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
                                    ],
                                  ),
                                )),
                          ),
                        ],
                      ),
                      Positioned(
                        top: 300,
                        child: InkWell(
                          child: Container(
                            width: 150,
                            height: 50,
                            alignment: Alignment.center,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('img/table.png'),
                                    fit: BoxFit.fill)),
                            child: const Text(
                              'Đăng Ký',
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
                          onTap: () {
                            showDialog(
                                context: context,
                                builder: (context) =>
                                    _onTapRegisterfail(context));
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}

_onTapRegisterfail(BuildContext context) {
  return Material(
    color: const Color(0x00000000),
    child: Stack(
      alignment: Alignment.topCenter,
      children: [
        Positioned(
          top: 300,
          child: Container(
            margin: const EdgeInsets.only(right: 180),
            width: 150,
            height: 50,
            child: Stack(children: [
              Image.asset(
                'img/logintoptb.png',
                height: 70,
                width: 150,
              ),
              //positon được dùng trong widget stack dùng để chỉnh vị trí của witget con của positon ở vị trí mong muốn
                Positioned(
                    top: 10,
                    left: 25,
                    child: InkWell(
                  child:const Text(
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
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    ),
                    onTap:() {
                    showDialog(
                        context: context,
                        builder: (context) => _onTapRegistersuccess(context));
                  }
                  ),
                  )
            ]),
          ),
        ),
        Positioned(
          top: 346.0,
          child: Container(
              margin: const EdgeInsets.only(
                left: 10,
              ),
              alignment: Alignment.topCenter,
              height: 120,
              width: 340,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('img/messagebox.png'),
                      fit: BoxFit.fill)),
              child: Container(
                padding: const EdgeInsets.fromLTRB(10, 10, 0, 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      textAlign: TextAlign.center,
                      'Nhập sai thông tin vui lòng kiểm \n tra lại !',
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
          top: 460,
          child: Container(
            margin: const EdgeInsets.only(left: 240),
            width: 100,
            height: 50,
            alignment: Alignment.center,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('img/buttonsmall.png'),
                    fit: BoxFit.fill)),
            child: InkWell(
              child: const Text(
                'Ok',
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
              },
            ),
          ),
        ),
      ],
    ),
  );
}

_onTapRegistersuccess(BuildContext context) {
  return Material(
    color: const Color(0x00000000),
    child: Stack(
      alignment: Alignment.topCenter,
      children: [
        Positioned(
          top: 300,
          child: Container(
            margin: const EdgeInsets.only(right: 180),
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
                top: 10,
                left: 25,
                child: Text(
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
                      fontSize: 20,
                      fontWeight: FontWeight.w600),
                ),
              )
            ]),
          ),
        ),
        Positioned(
          top: 346.0,
          child: Container(
              margin: const EdgeInsets.only(
                left: 10,
              ),
              alignment: Alignment.topCenter,
              height: 120,
              width: 340,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('img/messagebox.png'),
                      fit: BoxFit.fill)),
              child: Container(
                padding: const EdgeInsets.fromLTRB(10, 10, 0, 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      textAlign: TextAlign.center,
                      'Đăng ký thành công',
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
          top: 460,
          child: Container(
            margin: const EdgeInsets.only(left: 240),
            width: 100,
            height: 50,
            alignment: Alignment.center,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('img/buttonsmall.png'),
                    fit: BoxFit.fill)),
            child: InkWell(
              child: const Text(
                'Ok',
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
              },
            ),
          ),
        ),
      ],
    ),
  );
}
