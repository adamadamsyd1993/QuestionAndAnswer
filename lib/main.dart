import 'package:flutter/material.dart';

import 'app_data.dart';

import 'functionality.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.amber,
          title: const Text('true and false game'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 2,
              child: Image.asset(pictures[randomNumber]),
            ),
            SizedBox(
              height: 50,
            ),
            Expanded(
              flex: 1,
              child: Text(
                overflow: TextOverflow.ellipsis,
                // variable_name,

                'In the above picture is a ' + questions[randomNumber] + ' ?',
                style: TextStyle(
                  fontSize: 19,
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                ),
              ),
              // padding:
            ),
            Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: answer_box,
              ),
            ),
            Expanded(
              flex: 2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextButton(
                    style: ButtonStyle(
                      fixedSize:
                          MaterialStateProperty.all<Size?>(Size(100.0, 75.0)),
                      backgroundColor: MaterialStateProperty.all(Colors.yellow),
                    ),
                    onPressed: () {
                      answer = false;
                      clicks++;
                      identify_answer(answer);
                      setState(() {
                        randomNumber = random.nextInt(10);
                      });
                      count_answers(
                          clicks, answer_box, count_true, count_false);
                    },
                    child: Text(
                      'false',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.blue.shade700,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  TextButton(
                    style: ButtonStyle(
                      fixedSize:
                          MaterialStateProperty.all<Size?>(Size(100.0, 75.0)),
                      backgroundColor: MaterialStateProperty.all(Colors.yellow),
                    ),
                    onPressed: () {
                      answer_box = [];
                      count_true = 0;
                      count_false = 0;
                      clicks = 0;
                      setState(() {
                        randomNumber = random.nextInt(10);
                      });
                    },
                    child: Text(
                      'reset',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.blue.shade700,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  TextButton(
                    style: ButtonStyle(
                      fixedSize:
                          MaterialStateProperty.all<Size?>(Size(100.0, 75.0)),
                      backgroundColor: MaterialStateProperty.all(Colors.yellow),
                    ),
                    onPressed: () {
                      answer = true;
                      clicks++;
                      identify_answer(answer);
                      setState(() {
                        randomNumber = random.nextInt(10);
                      });
                      count_answers(
                          clicks, answer_box, count_true, count_false);
                    },
                    child: Text(
                      'true',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.blue.shade700,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
//S