import 'package:conditional_questions/conditional_questions.dart';

List<Question> questions() {
  return [
    Question(
      question: "How are you feeling today?",
    ),
    PolarQuestion(
        question: "Have you been stressed lately?",
        answers: ["Yes", "No"],
        ),
      PolarQuestion(
        question: "Do you feel tired all the time?",
        answers: ["Yes", "No"],
        ),
        PolarQuestion(
        question: "Do you like people around you?",
        answers: ["Yes", "No"],
        ),
        NestedQuestion(
      question: "Is there any trouble at college/workplace",
      answers: ["Yes", "No"],
      children: {
        'Yes': [          
          Question(
            question: "You can share anything if you want",
          ),
        ],
      },
    ),
    PolarQuestion(
        question: "Have you been eating properly?",
        answers: ["Yes", "No"]),
    PolarQuestion(
        question: "Would you be willing to talk to someone?",
        answers: ["Yes", "No"]),
    Question(
      question: "Anything you want to talk about (won't be shared)?",
    ),
    NestedQuestion(
      question: "Are you getting enough sleep at night?",
      answers: ["Yes", "No"],
      children: {
        'No': [
          PolarQuestion(
              question: "Are you having any nightmares?",
              answers: ["Yes", "No"]),          
         
        ],
      },
    )
  ];
}