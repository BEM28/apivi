import 'package:apivi/constant/colors_constant.dart';
import 'package:apivi/constant/image_constant.dart';
import 'package:apivi/constant/textstyle.dart';
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text('Virus', style: AppStyle.subtitleCard),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Image.asset(AppImage.virus),
              ),
              const SizedBox(height: 10),
              //materi
              const CardMateri(
                color: AppColors.green,
                title: "Materi 1",
                subtitle:
                    "uagjabjxabjkkbgajkgdjkgduagdsiuaghdiyaidiaysiayhsiauisuaiui",
              ),
              const CardMateri(
                color: AppColors.orange,
                title: "Materi 2",
                subtitle:
                    "uagjabjxabjkkbgajkgdjkgduagdsiuaghdiyaidiaysiayhsiauisuaiui",
              ),
              const CardMateri(
                color: AppColors.blue,
                title: "Materi 3",
                subtitle:
                    "uagjabjxabjkkbgajkgdjkgduagdsiuaghdiyaidiaysiayhsiauisuaiui",
              ),
              const CardMateri(
                color: AppColors.purple,
                title: "Materi 4",
                subtitle:
                    "uagjabjxabjkkbgajkgdjkgduagdsiuaghdiyaidiaysiayhsiauisuaiui",
              ),
              const CardMateri(
                color: AppColors.blue,
                title: "Materi 5",
                subtitle:
                    "uagjabjxabjkkbgajkgdjkgduagdsiuaghdiyaidiaysiayhsiauisuaiui",
              ),
              const CardMateri(
                color: AppColors.pink,
                title: "Materi 6",
                subtitle:
                    "uagjabjxabjkkbgajkgdjkgduagdsiuaghdiyaidiaysiayhsiauisuaiui",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
