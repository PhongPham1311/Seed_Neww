import 'package:flutter/material.dart';
import 'screens/login.dart';
import 'screens/register.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIOverlays([
    SystemUiOverlay.bottom, //This line is used for showing the bottom bar
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      margin: const EdgeInsets.only(top: 30),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('img/background.png'), fit: BoxFit.fill),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(
            'img/logo.png',
            width: 200,
            height: 200,
          ),
          Column(
            children: [
              InkWell(
                child: Container(
                  margin: const EdgeInsets.fromLTRB(0, 100, 0, 20),
                  width: 150,
                  height: 50,
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('img/table.png'),
                          fit: BoxFit.fill)),
                  child: const Text(
                    'Đăng Nhập',
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
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Login()));
                },
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
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Register()));
                },
              ),
            ],
          ),
        ],
      ),
    ));
  }
}
