import 'package:apivi/constant/colors_constant.dart';
import 'package:apivi/constant/image_constant.dart';
import 'package:apivi/constant/textstyle.dart';
import 'package:apivi/src/views/home_screen.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Image.asset(AppImage.virus),
                ),
                const SizedBox(height: 30),
                const Text("APIVI", style: AppStyle.title),
                const Text(
                    "Media Pembeljaran untuk menambah pemahaman tentang virus",
                    textAlign: TextAlign.center,
                    style: AppStyle.subtitle),
                const SizedBox(height: 30),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomeScreen())),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.primary,
                        padding: const EdgeInsets.symmetric(vertical: 3),
                      ),
                      child:
                          const Text("Ayo Mulai", style: AppStyle.titleButton)),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
