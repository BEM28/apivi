import 'package:apivi/constant/colors_constant.dart';
import 'package:apivi/constant/image_constant.dart';
import 'package:apivi/constant/textstyle.dart';
import 'package:apivi/src/controllers/materi_controller.dart';
import 'package:apivi/src/views/detail_materi.dart';
import 'package:apivi/src/views/quiz_start.dart';
import 'package:apivi/widget/card_materi.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        scrolledUnderElevation: 0,
        backgroundColor: AppColors.background,
        title: const Text('APIVI', style: AppStyle.titleAppbar),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8),
            child: Image.asset(AppImage.unirta),
          ),
          const SizedBox(width: 8)
        ],
        automaticallyImplyLeading: false,
      ),
      floatingActionButton: SizedBox(
        width: 65,
        height: 65,
        child: FloatingActionButton(
          onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const QuizStart(),
              )),
          shape: const CircleBorder(),
          backgroundColor: AppColors.primary,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                AppImage.quiz,
                width: 30,
                height: 30,
              ),
              const Text('Quiz', style: AppStyle.floatingtitle),
              const SizedBox(height: 3),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text('Virus', style: AppStyle.titlecard),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Image.asset(AppImage.virus),
              ),
              const SizedBox(height: 10),
              //materi
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: MateriController.materiList.length,
                itemBuilder: (context, index) {
                  final data = MateriController.materiList[index];
                  return CardMateri(
                    color: data.color,
                    title: data.title,
                    subtitle: data.subtitle,
                    image: data.image,
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DetailMateri(materi: data))),
                  );
                },
              ),
              const SizedBox(height: 50)
            ],
          ),
        ),
      ),
    );
  }
}
