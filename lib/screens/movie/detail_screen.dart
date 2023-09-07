import 'package:cgv_clone/models/movies.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key, required this.thisMovie});

  final Movie thisMovie;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(thisMovie.title),
      ),
      body: Text("${thisMovie.title} 영화가 전달 됐습니다"),
    );
  }
}
