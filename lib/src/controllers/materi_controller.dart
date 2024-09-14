import 'package:apivi/constant/colors_constant.dart';
import 'package:apivi/constant/image_constant.dart';
import 'package:apivi/src/models/materi_models.dart';

class MateriController {
  static List<MateriModels> materiList = [
    MateriModels(
      title: "Materi 1",
      subtitle:
          "Deskripsi singkat Materi 1 membahas pengenalan virus T untuk kamu yang tidak tahu, virus T adalah virus yang berbentuk mur",
      color: AppColors.green,
      image: AppImage.virus,
      linkVideo: "https://www.youtube.com/watch?v=a5WEu-Y5Dcs",
    ),
    MateriModels(
      title: "Materi 2",
      subtitle: "Deskripsi singkat Materi 2",
      color: AppColors.orange,
      image: AppImage.virus,
      linkVideo: "https://www.youtube.com/watch?v=a5WEu-Y5Dcs",
    ),
    MateriModels(
      title: "Materi 3",
      subtitle: "Deskripsi singkat Materi 3",
      color: AppColors.blue,
      image: AppImage.virus,
      linkVideo: "https://www.youtube.com/watch?v=a5WEu-Y5Dcs",
    ),
    MateriModels(
      title: "Materi 4",
      subtitle: "Deskripsi singkat Materi 4",
      color: AppColors.purple,
      image: AppImage.virus,
      linkVideo: "https://www.youtube.com/watch?v=a5WEu-Y5Dcs",
    ),
    MateriModels(
      title: "Materi 5",
      subtitle: "Deskripsi singkat Materi 5",
      color: AppColors.pink,
      image: AppImage.virus,
      linkVideo: "https://www.youtube.com/watch?v=a5WEu-Y5Dcs",
    ),
    MateriModels(
      title: "Materi 6",
      subtitle: "Deskripsi singkat Materi 6",
      color: AppColors.cream,
      image: AppImage.virus,
      linkVideo: "https://www.youtube.com/watch?v=a5WEu-Y5Dcs",
    ),
  ];
}
