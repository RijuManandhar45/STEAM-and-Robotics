import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox.expand(
            child: Image.network(
              "https://png.pngtree.com/background/20210710/original/pngtree-intelligent-age-robot-technology-background-picture-image_979995.jpg",
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
