import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: HeroProfile(),
  ));
}

class HeroProfile extends StatefulWidget {
  const HeroProfile({super.key});

  @override
  State<HeroProfile> createState() => _HeroProfileState();
}

class _HeroProfileState extends State<HeroProfile> {
  final TextEditingController nameController = TextEditingController();
  String heroName = 'Unknown Hero';

  @override
  void dispose() {
    nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hero Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Hero: $heroName',
              style: const TextStyle(fontSize: 28),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: nameController,
              decoration: const InputDecoration(
                labelText: 'Enter your hero name',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  heroName = nameController.text;
                });
              },
              child: const Text('Update Hero'),
            ),
          ],
        ),
      ),
    );
  }
}
