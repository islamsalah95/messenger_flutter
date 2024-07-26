import 'package:flutter/material.dart';
import "package:app/Views/home.dart";

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue,
        body: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 150,
              ),
              Image.asset('images/logo.gif'),
              const Text(
                'Welcome To Chat App',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 30),
              ),
              IconButton(
                  color: Colors.white,
                  iconSize: 50,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomeScreen(),
                        )
                    );
                  },
                  icon: const Icon(Icons.arrow_forward))
            ],
          ),
        ));
  }
}
