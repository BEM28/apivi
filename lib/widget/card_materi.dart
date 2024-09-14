import 'package:apivi/constant/colors_constant.dart';
import 'package:apivi/constant/image_constant.dart';
import 'package:apivi/constant/textstyle.dart';
import 'package:flutter/material.dart';

class CardMateri extends StatelessWidget {
  const CardMateri(
      {super.key,
      required this.title,
      required this.subtitle,
      this.color,
      this.image,
      this.onTap});

  final String title;
  final String subtitle;
  final String? image;
  final Color? color;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 130,
        margin: const EdgeInsets.symmetric(vertical: 3),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: double.infinity,
                height: 100,
                padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: color ?? AppColors.green,
                ),
                child: Row(
                  children: [
                    const SizedBox(width: 100),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(title,
                              overflow: TextOverflow.ellipsis,
                              style: AppStyle.titlecard),
                          Text(subtitle,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: AppStyle.subtitleCard),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 0,
              child: image == null
                  ? Image.asset(
                      AppImage.virus,
                      width: 100,
                    )
                  : Image.asset(
                      image!,
                      width: 100,
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
