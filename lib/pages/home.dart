import 'package:flutter/material.dart';
import 'package:team_flutter_project/constants.dart';
import 'package:team_flutter_project/models/level_info.dart';
import 'package:team_flutter_project/pages/level_describtion.dart';
import 'package:team_flutter_project/widgets/my_outline_btn.dart';
import 'dart:developer' as devtool show log;

import '../widgets/my_level_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List levels = [
    Level(
      image: 'assets/images/bags.png',
      supTitle: 'Level 1',
      title: 'True or False',
      icon: Icons.check,
      description:
          "In this quiz, you will be presented with five true/false questions. Test your knowledge and respond quickly to see how many questions you can answer correctly! ",
      colors: const [kL1, kL12],
      routeName: '/true_false_q',
    ),
    Level(
      image: 'assets/images/ballon-s.png',
      supTitle: 'Level 2',
      title: 'Multiple Choice',
      description: 'Hi ya man',
      icon: Icons.play_arrow,
      colors: const [kL2, kL22],
      routeName: '/multiple_q',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: MYOutlineBtn(
              icon: Icons.favorite,
              iconColor: kBlueIcon,
              bColor: kGreyFont.withOpacity(0.5),
              function: () {
                devtool.log("11111");
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: MYOutlineBtn(
                icon: Icons.person,
                iconColor: kBlueIcon,
                bColor: kGreyFont.withOpacity(0.5),
                function: () {
                  devtool.log("2222");
                }),
          ),
          const SizedBox(
            width: 16,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Let\'s Play',
                style: TextStyle(
                  fontSize: 32,
                  color: kRedFont,
                  fontWeight: FontWeight.bold,
                  fontFamily: kFontFamily,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              const Text(
                'Be the First!',
                style: TextStyle(
                  fontSize: 18,
                  color: kGreyFont,
                  fontFamily: kFontFamily,
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              MyLevelWidget(
                function: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return LevelDescription(
                          levelInfo: levels[0],
                        );
                      },
                    ),
                  );
                },
                icon: levels[0].icon,
                title: levels[0].title,
                subtitle: levels[0].supTitle,
                image: levels[0].image,
                colors: levels[0].colors,
              ),
              MyLevelWidget(
                function: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return LevelDescription(
                          levelInfo: levels[1],
                        );
                      },
                    ),
                  );
                },
                icon: levels[1].icon,
                title: levels[1].title,
                subtitle: levels[1].supTitle,
                image: levels[1].image,
                colors: levels[1].colors,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
