import 'package:apivi/constant/colors_constant.dart';
import 'package:apivi/constant/image_constant.dart';
import 'package:apivi/constant/textstyle.dart';
import 'package:apivi/src/views/home_screen.dart';
import 'package:apivi/src/views/quiz_game.dart';
import 'package:flutter/material.dart';

class SkorQuiz extends StatelessWidget {
  const SkorQuiz({super.key});

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
                Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Image.asset(AppImage.skor),
                    ),
                    const Positioned(
                      left: 0,
                      right: 0,
                      top: 0,
                      bottom: 0,
                      child: Center(
                        child: Text(
                          "100",
                          textAlign: TextAlign.center,
                          style: AppStyle.skorQuiz,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                const Text("Selamar Anda Berhasil Menjawab Semua Soal",
                    textAlign: TextAlign.center, style: AppStyle.subtitle),
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
                      child: const Text("Buka Materi",
                          style: AppStyle.titleButton)),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
