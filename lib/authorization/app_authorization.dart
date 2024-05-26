import 'package:flutter/material.dart';
import 'package:flutter_appaaaaaaaaaaaaa/screen/screen.dart';

class AppAuthorization extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const AppAuthorization({Key? key});

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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Align(
              alignment: const Alignment(0.0, -0.5),
              child: Image.asset('assets/Online.png'),
            ),
            const SizedBox(height: 20),
            const Text(
              'Registration',
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
              },
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0)),
                backgroundColor: const Color.fromARGB(255, 75, 230, 80),
                minimumSize: const Size(328, 52),
              ),
              child: const Text(
                'Log in',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton.icon(
              onPressed: () {
              },
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0)),
                backgroundColor: Colors.black,
                minimumSize: const Size(328, 52),
              ),
              icon: const Padding(
                padding: EdgeInsets.only(left: 0.0, right: 20.0),
                child: Icon(Icons.apple, color: Colors.white),
              ),
              label: const Text(
                'Continue with Apple',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton.icon(
              onPressed: () {
              },
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0)),
                backgroundColor: Colors.black,
                minimumSize: const Size(328, 52),
              ),
              icon: Padding(
                padding: const EdgeInsets.only(left: 0.0, right: 20.0),
                child: Image.asset(
                  'assets/google.png',
                  height: 30,
                  width: 30,
                ),
              ),
              label: const Text(
                'Continue with Google',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
            const SizedBox(height: 20),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Screen(),
                  ),
                );
              },
              child: const Text(
                'Forgot your password?',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                    color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
