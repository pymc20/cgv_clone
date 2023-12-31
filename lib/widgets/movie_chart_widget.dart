import 'package:cgv_clone/models/movies.dart';
import 'package:cgv_clone/screens/movie/detail_screen.dart';
import 'package:cgv_clone/widgets/build_rank_poster.dart';
import 'package:flutter/material.dart';

class MovieChartWidget extends StatelessWidget {
  const MovieChartWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                "무비차트",
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const Spacer(),
              TextButton(
                  onPressed: () => {},
                  child: const Row(
                    children: [
                      Text(
                        "전체보기",
                        style: TextStyle(color: Colors.grey),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.grey,
                        size: 10.0,
                      )
                    ],
                  )),
            ],
          ),
          SizedBox(
            height: 280.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: List.generate(
                  movieList.length,
                  (index) => GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    DetailScreen(thisMovie: movieList[index])));
                      },
                      child: buildRankPoster(movieList[index]))),
            ),
          )
        ],
      ),
    );
  }
}
