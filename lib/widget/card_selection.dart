import 'package:apivi/constant/colors_constant.dart';
import 'package:apivi/constant/textstyle.dart';
import 'package:flutter/material.dart';

class cardSelection extends StatelessWidget {
  const cardSelection({
    super.key,
    this.onTap,
    required this.onSelect,
    required this.pilihan,
  });

  final void Function()? onTap;
  final String onSelect;
  final String pilihan;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 65,
        padding: const EdgeInsets.all(8),
        margin: const EdgeInsets.only(bottom: 8),
        decoration: BoxDecoration(
          border: Border.all(),
          color: onSelect == pilihan ? AppColors.yellow : AppColors.background,
          borderRadius: BorderRadius.circular(15),
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                pilihan,
                style: AppStyle.subtitleCard,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
