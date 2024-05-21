import 'package:flutter/material.dart';

import '../../utils/styles/text_styles.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Image.asset(
            'assets/images/DrukAbroad.png',
            height: 400,
            width: double.infinity,
          ),
          Text(
            'Emblem of Bhutan',
            style: kScreenTitles,
          )
        ],
      ),
    );
  }
}