import 'package:cgv_clone/models/movies.dart';
import 'package:flutter/material.dart';

class ReviewScreen extends StatefulWidget {
  const ReviewScreen({super.key, required this.item});
  final Movie item;

  @override
  State<StatefulWidget> createState() => _ReviewScreenState();
}

class _ReviewScreenState extends State<ReviewScreen> {
  TextEditingController reviewIdController = TextEditingController();
  TextEditingController reviewTextController = TextEditingController();
  List<String> choices = ["GOOD!", "BAD."];
  int choiceIndex = 0;

  @override
  Widget build(BuildContext context) {
    // Movie thisMovie = widget.item;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "관람평 등록",
          style: Theme.of(context).textTheme.titleLarge,
        ),
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black87),
      ),
      body: ListView(
        children: [
          Container(
            color: Colors.black12,
            padding: const EdgeInsets.all(12.0),
            alignment: Alignment.center,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    "이 영화 어땠나요?",
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: List<Widget>.generate(
                        choices.length,
                        (index) => ChoiceChip(
                              padding: const EdgeInsets.all(10.0),
                              label: Text(
                                choices[index],
                                style: TextStyle(
                                    color: (choiceIndex == index)
                                        ? Colors.white
                                        : Colors.black,
                                    fontSize: 20),
                              ),
                              labelPadding:
                                  const EdgeInsets.symmetric(horizontal: 50),
                              selected: choiceIndex == index,
                              onSelected: (value) {
                                setState(() {
                                  choiceIndex = index;
                                });
                              },
                              backgroundColor: Colors.white,
                              selectedColor: Colors.red,
                              shape: ContinuousRectangleBorder(
                                  borderRadius: BorderRadius.circular(5.0)),
                            )).toList()),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "나의 감상평",
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                const SizedBox(height: 20),
                TextField(
                  controller: reviewIdController,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(), labelText: '작성자'),
                ),
                const SizedBox(height: 10),
                TextField(
                  controller: reviewTextController,
                  minLines: 1,
                  maxLines: 5,
                  keyboardType: TextInputType.multiline,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(), labelText: '내용'),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.red,
                        side: const BorderSide(width: 0.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(2),
                        )),
                    onPressed: () {
                      if (reviewIdController.text.isEmpty ||
                          reviewTextController.text.isEmpty) {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) => AlertDialog(
                                  content: const Text('리뷰를 입력하세요.'),
                                  actions: <Widget>[
                                    TextButton(
                                        onPressed: () =>
                                            Navigator.pop(context, 'OK'),
                                        child: const Text('OK'))
                                  ],
                                ));
                      }
                    },
                    child: const Text(
                      '제출',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
