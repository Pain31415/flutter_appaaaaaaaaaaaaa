import 'package:flutter/material.dart';
import 'package:flutter_appaaaaaaaaaaaaa/HELPER/window2.dart';

class Window1 extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const Window1({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFFA93BBB), Color(0xFFCD1919)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        padding: EdgeInsets.symmetric(
          vertical: MediaQuery.of(context).size.height * 0.1,
          horizontal: 20,
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                flex: 1,
                child: Image.asset('assets/Robot.png'),
              ),
              const SizedBox(height: 20),
              const Text(
                'Use AI for your lessons',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              const SizedBox(height: 20),
              const Text(
                'Learning all the languages of the world',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
              const SizedBox(height: 60),
              Padding(
                padding: const EdgeInsets.only(bottom: 100),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _buildCircle(Colors.white),
                    const SizedBox(width: 10),
                    _buildCircle(Colors.grey),
                    const SizedBox(width: 10),
                    _buildCircle(Colors.grey),
                  ],
                ),
              ),
              SizedBox(
                width: 155,
                height: 60,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Window2(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  child: const Text(
                    'Next',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Skip',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCircle(Color color) {
    return Container(
      width: 30,
      height: 30,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color,
      ),
    );
  }
}
