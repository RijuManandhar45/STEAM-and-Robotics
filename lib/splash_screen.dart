import 'package:flutter/material.dart';
import 'package:steam_and_robotics_hub/onboarding_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox.expand(
            child: Image.network(
              "https://images.rawpixel.com/image_800/cHJpdmF0ZS9sci9pbWFnZXMvd2Vic2l0ZS8yMDIzLTA3L2pvYjE4NzItYmFja2dyb3VuZC1jaGEtMDExaF8xLmpwZw.jpg",
              fit: BoxFit.cover,
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => OnboardingPages()));
            },
            child: Container(
              color: Colors.black12,
            ),
          ),
          SafeArea(
            child: Center(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 60,
                    ),
                    Text(
                      "STEAM & ROBOTICS",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                        shadows: [
                          Shadow(
                            blurRadius: 10.0,
                            color: Colors.blue,
                            offset: Offset(0, 0),
                          ),
                          Shadow(
                            blurRadius: 20.0,
                            color: Colors.blueAccent,
                            offset: Offset(0, 0),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      "HUB",
                      style: TextStyle(
                        color: Colors.lightBlueAccent,
                        fontSize: 42,
                        fontWeight: FontWeight.bold,
                        shadows: [
                          Shadow(
                            blurRadius: 10.0,
                            color: Colors.blue,
                            offset: Offset(0, 0),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 40),
                    Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.08),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: Colors.white.withOpacity(0.2),
                        ),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: Image.network(
                          "https://static.vecteezy.com/system/resources/thumbnails/044/277/420/small_2x/ai-android-robot-pointing-hand-at-front-on-isolated-transparent-background-png.png",
                          height: 240,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    SizedBox(height: 30),
                    Text(
                      "Innovate • Build • Explore",
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 16,
                        letterSpacing: 1.2,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Shaping the future through",
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 16,
                        letterSpacing: 1.2,
                      ),
                    ),
                    Text(
                      "STEAM and Robotics",
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 16,
                        letterSpacing: 1.2,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
