import 'package:flutter/material.dart';
import 'package:flutter_appaaaaaaaaaaaaa/information/information.dart';

class ChoiceScreen extends StatelessWidget {
  const ChoiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80.0),
        child: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          flexibleSpace: Container(
            color: Colors.black,
            child: const Center(
              child: Text(
                'Choose the language category',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.greenAccent,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/gipback.gif'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50.0, left: 20.0, right: 20.0),
              child: Image.asset(
                'assets/crow.png',
                width: 200,
                height: 200,
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Choose the language category you want to learn.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24,
                color: Color.fromARGB(255, 0, 255, 21),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      backgroundColor: Colors.purple,
                      minimumSize: const Size(double.infinity, 52),
                    ),
                    child: const Text(
                      'Foreign languages 7000+-',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      backgroundColor: Colors.blue,
                      minimumSize: const Size(double.infinity, 52),
                    ),
                    child: const Text(
                      'Programming languages 700-800',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      backgroundColor: Colors.brown,
                      minimumSize: const Size(double.infinity, 52),
                    ),
                    child: const Text(
                      'Other languages',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Information()));
                    },
                    child: const Text(
                      'Choose later',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
