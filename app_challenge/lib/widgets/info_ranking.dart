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
              margin: const EdgeInsets.only(top:40),
              child: const SelectWinners(),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // TimeRangeMenu(
              //   items: [
              //   TimeRangeButton(period: 'Today'),
              //   TimeRangeButton(period: 'Monthly'),
              //   TimeRangeButton(period: 'All time'),
              // ],
              // )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const[
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

