import 'package:DevQuiz/core/app_images.dart';
import 'package:DevQuiz/home/home_state.dart';
import 'package:DevQuiz/shared/models/awnser_model.dart';
import 'package:DevQuiz/shared/models/question_model.dart';
import 'package:DevQuiz/shared/models/quiz_model.dart';
import 'package:DevQuiz/shared/models/user_model.dart';
import 'package:flutter/foundation.dart';

class HomeController {
  final stateNotifier = ValueNotifier<HomeState>(HomeState.empty);
  set state(HomeState state) => stateNotifier.value = state;
  HomeState get state => stateNotifier.value;

  UserModel? user;
  List<QuizModel>? quizzes;

  void getUser() async {
    state = HomeState.loading;
    await Future.delayed(Duration(seconds: 2));

    user = UserModel(
        name: "Gustavo Silva", photoURL: "https://github.com/gstvds.png");
    state = HomeState.success;
  }

  void getQuizzes() async {
    state = HomeState.loading;
    await Future.delayed(Duration(seconds: 2));

    quizzes = [
      QuizModel(
          title: "NLW5 - Flutter",
          questions: [
            QuestionModel(title: "Está curtindo o Flutter?", awnsers: [
              AwnserModel(title: "Estou curtindo"),
              AwnserModel(title: "Amando Flutter"),
              AwnserModel(title: "Muito top"),
              AwnserModel(title: "Show de bola", isRight: true)
            ]),
            QuestionModel(title: "Está curtindo o Flutter?", awnsers: [
              AwnserModel(title: "Estou curtindo"),
              AwnserModel(title: "Amando Flutter"),
              AwnserModel(title: "Muito top"),
              AwnserModel(title: "Show de bola", isRight: true)
            ]),
          ],
          image: AppImages.blocks,
          level: Level.easy),
    ];
    state = HomeState.success;
  }
}
