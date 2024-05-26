import 'package:flutter/material.dart';

class LanguagesScreen extends StatelessWidget {
  const LanguagesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> languages = [
      {'name': 'English', 'icon': 'assets/english.png'},
      {'name': 'Spanish', 'icon': 'assets/spanish.png'},
      {'name': 'Chinese', 'icon': 'assets/chine.png'},
      {'name': 'French', 'icon': 'assets/french.png'},
      {'name': 'German', 'icon': 'assets/german.png'},
      {'name': 'Japanese', 'icon': 'assets/japan.png'},
      {'name': 'Korean', 'icon': 'assets/korean.png'},
      {'name': 'Italian', 'icon': 'assets/italy.png'},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('List of Languages'),
        backgroundColor: Colors.purple,
      ),
      body: ListView.builder(
        itemCount: languages.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Image.asset(
              languages[index]['icon']!,
              width: 40,
              height: 40,
            ),
            title: Text(languages[index]['name']!),
          );
        },
      ),
    );
  }
}