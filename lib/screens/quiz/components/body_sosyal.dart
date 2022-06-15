import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:sinavproje/constants.dart';
import 'package:sinavproje/controllers/question_controller.dart';
import 'package:sinavproje/controllers/question_controller_matematik.dart';
import 'package:sinavproje/models/Questions.dart';
import 'package:sinavproje/screens/quiz/components/progress_bar_sosyal.dart';
import 'package:sinavproje/screens/quiz/components/question_card_matematik.dart';
import 'package:sinavproje/screens/quiz/components/question_card_sosyal.dart';

import '../../../controllers/question_controller_sosyal.dart';
import 'progress_bar.dart';
import 'question_card.dart';

class BodySosyal extends StatelessWidget {
  const BodySosyal({
    Key? key,
  }) : super(key: key);



  @override
  Widget build(BuildContext context) {
    // So that we have acccess our controller
    QuestionControllerSosyal _questionController = Get.put(QuestionControllerSosyal());
    return Stack(
      children: [
        SvgPicture.asset("assets/icons/bg.svg", fit: BoxFit.fill),
        SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: ProgressBarSosyal(),
              ),
              SizedBox(height: kDefaultPadding),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: Obx(
                  () => Text.rich(
                    TextSpan(
                      text:
                          "Soru ${_questionController.questionNumber.value}",
                      style: Theme.of(context)
                          .textTheme
                          .headline4
                          ?.copyWith(color: Colors.black),
                      children: [
                        TextSpan(
                          text: "/${_questionController.questions.length}",
                          style: Theme.of(context)
                              .textTheme
                              .headline5
                              ?.copyWith(color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Divider(thickness: 1.5),
              SizedBox(height: kDefaultPadding),
              Expanded(
                child: PageView.builder(
                  // Block swipe to next qn
                  physics: NeverScrollableScrollPhysics(),
                  controller: _questionController.pageController,
                  onPageChanged: _questionController.updateTheQnNum,
                  itemCount: _questionController.questions.length,
                  itemBuilder: (context, index) => QuestionCardSosyal(
                      questionsosyal: _questionController.questions[index]),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}