import 'package:flutter/material.dart';

class ChallengeMe extends StatefulWidget {
  const ChallengeMe({super.key});

  @override
  State<ChallengeMe> createState() => _ChallengeMeState();
}

class _ChallengeMeState extends State<ChallengeMe> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('img/background3.png'), fit: BoxFit.fill),
      ),
      child: Stack(
        children: [
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  child: Container(
                    margin: EdgeInsets.fromLTRB(0, 20, 20, 0),
                    alignment: Alignment.center,
                    width: 280,
                    height: 90,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('img/frame.png'), fit: BoxFit.fitHeight),
                    ),
                    child: const Text(
                      'CHỦ ĐỀ',
                      style: TextStyle(
                          shadows: [
                            Shadow(
                              offset: Offset(5, 3),
                              blurRadius: 10,
                              color: Colors.black,
                            ),
                          ],
                          color: Color.fromARGB(255, 243, 255, 24),
                          fontFamily: 'Mono',
                          fontSize: 20,
                          fontWeight: FontWeight.w800),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  height: MediaQuery.of(context).size.height * 0.7,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InkWell(
                        child: Container(
                          width: 260,
                          height: 75,
                          alignment: Alignment.center,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('img/frame5.png'),
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
                                  image: AssetImage('img/frame5.png'),
                                  fit: BoxFit.fill)),
                          child: const Text(
                            'Địa Lý',
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
                                  image: AssetImage('img/frame5.png'),
                                  fit: BoxFit.fill)),
                          child: const Text(
                            'Văn Học',
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
                                  image: AssetImage('img/frame5.png'),
                                  fit: BoxFit.fill)),
                          child: const Text(
                            'Lập Trình',
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
                )
              ],
            ),
          ),
          Positioned(
            top:30,
            left: 10,
            child: Container(
              width: 50,
              child: InkWell(
                child: Image.asset(
                  'img/return.png',
                  width: 50,
                  height: 50,
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
