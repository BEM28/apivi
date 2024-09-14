import 'dart:async';

import 'package:apivi/constant/colors_constant.dart';
import 'package:apivi/constant/textstyle.dart';
import 'package:apivi/src/controllers/quiz_controller.dart';
import 'package:apivi/src/models/quiz_model.dart';
import 'package:apivi/src/views/skor_quiz.dart';
import 'package:apivi/widget/card_selection.dart';
import 'package:flutter/material.dart';

class QuizGame extends StatefulWidget {
  const QuizGame({super.key});

  @override
  State<QuizGame> createState() => _QuizGameState();
}

class _QuizGameState extends State<QuizGame> {
  Timer? _timer;
  int _start = 30;
  int _currentQuestionIndex = 0;
  late QuizModel _currentQuestion;
  String jawaban = '';

  @override
  void initState() {
    super.initState();
    _currentQuestion = QuizController.quizList[_currentQuestionIndex];
    _startTimer();
  }

  void _startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (Timer timer) {
      if (_start == 0) {
        setState(() {
          _nextQuestion();
          timer.cancel();
        });
      } else {
        setState(() {
          _start--;
        });
      }
    });
  }

  void _stopTimer() {
    _timer?.cancel();
    setState(() {
      _start = 0;
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  void _nextQuestion() {
    setState(() {
      if (_currentQuestionIndex < QuizController.quizList.length - 1) {
        _stopTimer();
        _start = 30;
        _currentQuestionIndex++;
        _currentQuestion = QuizController.quizList[_currentQuestionIndex];
        jawaban = '';
        _startTimer();
      } else {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const SkorQuiz()),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        scrolledUnderElevation: 0,
        backgroundColor: AppColors.background,
        title: Text(
            'Pertanyaan ${_currentQuestionIndex + 1}/${QuizController.quizList.length}',
            style: AppStyle.titlecard),
        actions: [
          Text('$_start detik', style: AppStyle.timer),
          const SizedBox(width: 8)
        ],
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              // box pertanyaan
              Container(
                width: double.infinity,
                height: 200,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: AppColors.primary,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: SingleChildScrollView(
                  child: Center(
                    child: Text(
                      _currentQuestion.soal,
                      style: AppStyle.subtitleQuiz,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // jawaban
              for (var pilihan in _currentQuestion.pilihan)
                cardSelection(
                  onSelect: jawaban,
                  pilihan: pilihan,
                  onTap: () {
                    setState(() {
                      jawaban = pilihan;
                    });
                  },
                ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
        width: double.infinity,
        child: ElevatedButton(
          onPressed: _nextQuestion,
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.primary,
            padding: const EdgeInsets.symmetric(vertical: 3),
          ),
          child: const Text("Selanjutnya", style: AppStyle.titleButton),
        ),
      ),
    );
  }
}
