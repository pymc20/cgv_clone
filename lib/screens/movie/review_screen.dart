import 'package:cgv_clone/models/movies.dart';
import 'package:flutter/material.dart';

class ReviewScreen extends StatefulWidget {
  const ReviewScreen({super.key, required this.item});
  final Movie item;

  @override
  ReviewScreenState createState() => ReviewScreenState();
}

class ReviewScreenState extends State<ReviewScreen> {
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
      body: const Text("관람평 작성 임시 화면입니다."),
    );
  }
}
