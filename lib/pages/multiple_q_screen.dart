import 'package:flutter/material.dart';
import 'package:team_flutter_project/pages/home.dart';
import 'package:team_flutter_project/widgets/my_outline_btn.dart';

import '../constants.dart';

class MultiQScreen extends StatefulWidget {
  const MultiQScreen({Key? key}) : super(key: key);

  @override
  State<MultiQScreen> createState() => _MultiQScreenState();
}

class _MultiQScreenState extends State<MultiQScreen> {
  @override
  Widget build(BuildContext context) {
    var questionNumber = 5;
    var questionsCount = 10;

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              kBlueBg,
              kL2,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 74, left: 24, right: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 44,
                    width: 44,
                    child: MYOutlineBtn(
                      icon: Icons.close,
                      iconColor: Colors.white,
                      bColor: Colors.white,
                      function: () {
                        // Navigator.pop(context);
                        // Navigator.pop(context);

                        Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HomePage(),
                          ),
                          (route) => false,
                        );
                      },
                    ),
                  ),
                  // OutlinedButton(
                  //   onPressed: () {},
                  //   style: ButtonStyle().copyWith(
                  //     shape: MaterialStatePropertyAll(
                  //       RoundedRectangleBorder(
                  //         borderRadius: BorderRadius.circular(25),
                  //       ),
                  //     ),
                  //     side: MaterialStatePropertyAll(
                  //       BorderSide(color: Colors.white),
                  //     ),
                  //   ),
                  //   child: Row(
                  //     children: [
                  //       Icon(
                  //         Icons.favorite,
                  //         color: Colors.white,
                  //       ),
                  //       SizedBox(
                  //         width: 8,
                  //       ),
                  //       const Text(
                  //         '3',
                  //         style: TextStyle(color: Colors.white),
                  //       ),
                  //     ],
                  //   ),
                  // ),

                  const Stack(
                    alignment: Alignment.center,
                    children: [
                      SizedBox(
                        height: 56,
                        width: 56,
                        child: CircularProgressIndicator(
                          value: 0.7,
                          color: Colors.white,
                          backgroundColor: Colors.white12,
                        ),
                      ),
                      Text(
                        '05',
                        style: TextStyle(
                          fontFamily: 'Sf-Pro-Text',
                          fontSize: 24,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),

                  OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                        side: const BorderSide(color: Colors.white)),
                    child: const Icon(
                      Icons.favorite,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
              Expanded(
                child: Center(
                  child: Image.asset('assets/images/ballon-b.png'),
                ),
              ),
              Text(
                'question $questionNumber of $questionsCount',
                style: const TextStyle(
                  fontSize: 18,
                  fontFamily: 'Sf-Pro-Text',
                  color: Colors.white60,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              const Text(
                'In Which City of Germany Is the Largest Port?',
                style: TextStyle(
                  fontSize: 32,
                  fontFamily: 'Sf-Pro-Text',
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 48,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 12),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    padding: const EdgeInsets.symmetric(
                        vertical: 12, horizontal: 16),
                  ),
                  child: const Row(
                    children: [
                      SizedBox(
                        width: 24,
                      ),
                      Expanded(
                        child: Center(
                          child: Text(
                            'Bremen',
                            style: TextStyle(
                                color: kL2,
                                fontWeight: FontWeight.w500,
                                fontSize: 18),
                          ),
                        ),
                      ),
                      Icon(
                        Icons.check_rounded,
                        color: kL2,
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 12),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    padding: const EdgeInsets.symmetric(
                        vertical: 12, horizontal: 16),
                  ),
                  child: const Row(
                    children: [
                      SizedBox(
                        width: 24,
                      ),
                      Expanded(
                        child: Center(
                          child: Text(
                            'Bremen',
                            style: TextStyle(
                                color: kL2,
                                fontWeight: FontWeight.w500,
                                fontSize: 18),
                          ),
                        ),
                      ),
                      Icon(
                        Icons.check_rounded,
                        color: kL2,
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 12),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: kG1,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    padding: const EdgeInsets.symmetric(
                        vertical: 12, horizontal: 16),
                  ),
                  child: const Row(
                    children: [
                      SizedBox(
                        width: 24,
                      ),
                      Expanded(
                        child: Center(
                          child: Text(
                            'Gaza',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 18),
                          ),
                        ),
                      ),
                      Icon(
                        Icons.check_rounded,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 48,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
