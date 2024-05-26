import 'package:flutter/material.dart';
import 'package:flutter_appaaaaaaaaaaaaa/languages/languages_screen.dart';

class Information extends StatelessWidget {
  const Information({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background color gradient
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.purple, Colors.redAccent],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
          Column(
            children: [
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back, color: Colors.white),
                    onPressed: () {
                      // Action for back arrow
                      Navigator.pop(context);
                    },
                  ),
                  const Text(
                    'I will help you!',
                    style: TextStyle(
                      color: Colors.greenAccent,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.help_outline, color: Colors.white),
                    onPressed: () {
                      // Action for avatar
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const QuestionScreen()),
                      );
                    },
                  ),
                ],
              ),
              Expanded(
                child: ListView(
                  padding: const EdgeInsets.all(16.0),
                  children: [
                    MenuItem(
                      number: '1',
                      text: 'List of languages',
                      icon: Icons.list,
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const LanguagesScreen()),
                        );
                      },
                    ),
                    MenuItem(number: '2', text: 'Search', icon: Icons.search, onTap: () {}),
                    MenuItem(number: '3', text: 'Filters', icon: Icons.filter_list, onTap: () {}),
                    MenuItem(number: '4', text: 'Sorting', icon: Icons.sort, onTap: () {}),
                    MenuItem(number: '5', text: 'Images of flags', icon: Icons.flag, onTap: () {}),
                    MenuItem(number: '6', text: 'Language information', icon: Icons.info, onTap: () {}),
                    MenuItem(number: '7', text: 'Recommendations', icon: Icons.recommend, onTap: () {}),
                    MenuItem(number: '8', text: 'Language input support', icon: Icons.input, onTap: () {}),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  'assets/planet.gif',
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class MenuItem extends StatelessWidget {
  final String number;
  final String text;
  final IconData icon;
  final VoidCallback onTap;

  const MenuItem({
    super.key,
    required this.number,
    required this.text,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.cyanAccent,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: ListTile(
          leading: Text(
            number,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          title: Text(
            text,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 18,
            ),
          ),
          trailing: Icon(icon, color: Colors.black),
          onTap: onTap,
        ),
      ),
    );
  }
}

class QuestionScreen extends StatelessWidget {
  const QuestionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Question'),
      ),
      body: const Center(
        child: Text('Question Screen'),
      ),
    );
  }
}
