import 'package:flutter/material.dart';
import 'package:flutter_appaaaaaaaaaaaaa/choicescreen/choise_screen.dart';

class Screen extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const Screen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFFA93BBB), Color(0xFFCD1919)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 100),
              const Text(
                "Hello, I'm a crow",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 150),
                alignment: Alignment.topCenter,
                child: Image.asset(
                  'assets/crow.png',
                  fit: BoxFit.contain,
                ),
              ),
              const SizedBox(height: 120),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const ChoiceScreen()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  backgroundColor: const Color.fromARGB(255, 75, 230, 80),
                  minimumSize: const Size(328, 52),
                ),
                child: const Text(
                  'Lets start!',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
