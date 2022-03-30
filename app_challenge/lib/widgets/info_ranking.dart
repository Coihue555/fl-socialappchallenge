import 'package:app_challenge/widgets/widgets.dart';
import 'package:flutter/material.dart';

class InfoRanking extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              margin: EdgeInsets.only(top:80),
              child: SelectWinners(),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TimeRangeMenu()
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              PollInfo('tonystark.jpg', 'Tony Stakss', '17500', false),
              PollInfo('freddurst.jpg', 'Fred Durst', '19580', true),
              PollInfo('tonyhawk.jpg', 'Tony Hawk', '15500', false),
            ],
          )
        ],
      ),
    );
  }
}

