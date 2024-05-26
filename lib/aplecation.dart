import 'package:flutter/material.dart';
import 'package:flutter_appaaaaaaaaaaaaa/HELPER/window1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Application(),
    );
  }
}

class Application extends StatefulWidget {
  const Application({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ApplicationState createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Path of Pain'),
      ),
      body: Stack(
        children: [
          Image.asset(
            'assets/gip.gif',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Window1(),
                          ),
                        );
                      },
                      child: Image.asset('assets/Dark.png'),),
                  ],
                ),
                const SizedBox(height: 20),
                Image.asset('assets/text.png'),
                const SizedBox(height: 10),
                const Text(
                  'Learning all the languages ​​of the world',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}