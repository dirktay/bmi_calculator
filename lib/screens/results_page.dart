import 'package:flutter/material.dart';

import '../constants.dart';
import '../components/bottom_button.dart';
import '../components/reusable_card.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage({
    Key? key,
    required this.bmIndex,
    required this.bmiSummary,
    required this.bmiComment,
  }) : super(key: key);
  final String bmIndex;
  final String bmiSummary;
  final String bmiComment;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Expanded(
            child: Center(
              child: Text(
                'YOUR RESULT',
                style: kLargeLabelTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Center(
                    child: Text(
                      bmiSummary.toUpperCase(),
                      style: kResultTextStyle,
                    ),
                  ),
                  Center(
                    child: Text(
                      bmIndex,
                      style: kVeryLargeLabelTextStyle,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(14.0),
                    child: Text(
                      bmiComment,
                      style: kLabelTextStyle,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            onPress: () {
              Navigator.pop(context);
            },
            buttonTitle: 'RE-CALCULATE',
          ),
        ],
      ),
    );
  }
}
