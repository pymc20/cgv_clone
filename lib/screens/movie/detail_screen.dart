import 'package:cgv_clone/models/movies.dart';
import 'package:cgv_clone/screens/movie/review_screen.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key, required this.thisMovie});

  final Movie thisMovie;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            thisMovie.title,
            style: Theme.of(context).textTheme.titleLarge,
          ),
          backgroundColor: Colors.white,
          iconTheme: const IconThemeData(color: Colors.black87),
        ),
        body: ListView(
          children: [
            Stack(
              children: [
                Image.asset(
                  thisMovie.imageUrl,
                  width: MediaQuery.of(context).size.width,
                  height: 300,
                  fit: BoxFit.cover,
                ),
                Container(
                  height: 300,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                        Colors.grey.withOpacity(0.4),
                        Colors.black
                      ])),
                ),
                Positioned(
                  left: 10.0,
                  bottom: 14.0,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Image.asset(
                        thisMovie.imageUrl,
                        width: MediaQuery.of(context).size.width * 0.25,
                        fit: BoxFit.contain,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              thisMovie.title,
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              thisMovie.subTitle,
                              style: const TextStyle(color: Colors.white),
                            ),
                            Text(
                              thisMovie.runTime,
                              style: const TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                    side: const BorderSide(color: Colors.black87),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4.0))),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ReviewScreen(item: thisMovie)));
                },
                child: const Text("실관람평 등록하기"),
              ),
            ),
          ],
        ));
  }
}
