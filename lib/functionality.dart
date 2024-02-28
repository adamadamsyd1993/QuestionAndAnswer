import 'package:flutter/material.dart';
import 'dart:math';
import 'app_data.dart';
import 'widgets.dart';

Random random = new Random();
int randomNumber = random.nextInt(10);

late bool answer;

int count_true = 0;

int count_false = 0;

int clicks = 0;

void count_answers(int clicks, List<Icon> answer_box, int t, int f) {
  if (clicks == 12) {
    make_empty(answer_box);
    if (t > f || t == f) {
      print('congrats u won');
    } else {
      print('u faild');
    }
  }
}

void identify_answer(bool answer) {
  if (answer == correct_answers[randomNumber]) {
    answer_box.add(true_answer);
    count_true++;
    print(count_true);
  } else {
    answer_box.add(false_answer);
    count_false++;
    print(count_true);
  }
}

List<Icon> answer_box = [];

void make_empty(List<Icon> users) {
  users = [];
}
