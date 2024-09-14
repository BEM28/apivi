import 'package:apivi/src/models/quiz_model.dart';

class QuizController {
  static List<QuizModel> quizList = [
    QuizModel(
      soal: "Apa Itu Virus?",
      jawaban: "A. ya virus",
      pilihan: ["A. ya virus", "B. bakteri", "C. ga tau", "D. semua benar"],
    ),
    QuizModel(
      soal: "Apa yang dimaksud dengan vaksin?",
      jawaban: "B. Produk biologis untuk melindungi dari penyakit",
      pilihan: [
        "A. Obat sakit kepala",
        "B. Produk biologis untuk melindungi dari penyakit",
        "C. Vitamin tambahan",
        "D. Suplemen makanan"
      ],
    ),
    QuizModel(
      soal: "Apa nama virus penyebab flu?",
      jawaban: "C. Influenza",
      pilihan: ["A. HIV", "B. Hepatitis", "C. Influenza", "D. Corona"],
    ),
    QuizModel(
      soal: "Bagaimana cara mencegah penyebaran virus?",
      jawaban: "D. Semua jawaban benar",
      pilihan: [
        "A. Mencuci tangan secara teratur",
        "B. Menghindari kerumunan",
        "C. Menggunakan masker",
        "D. Semua jawaban benar"
      ],
    ),
    QuizModel(
      soal: "Apa gejala umum infeksi virus?",
      jawaban: "A. Demam dan batuk",
      pilihan: [
        "A. Demam dan batuk",
        "B. Sakit perut",
        "C. Nyeri otot",
        "D. Semua jawaban benar"
      ],
    ),
    QuizModel(
      soal: "Apa langkah pertama yang harus dilakukan jika terkena virus?",
      jawaban: "B. Menghubungi profesional medis",
      pilihan: [
        "A. Mengobati sendiri",
        "B. Menghubungi profesional medis",
        "C. Mengabaikan",
        "D. Mencari informasi online"
      ],
    ),
  ];
}
