import 'package:cgv_clone/models/movies.dart';
import 'package:flutter/material.dart';

Widget buildRankPoster(Movie movie) {
  return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        children: [
          Container(
            decoration: const BoxDecoration(boxShadow: [
              BoxShadow(
                  color: Colors.black38, offset: Offset(5, 5), blurRadius: 4.0)
            ]),
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(5.0),
                  child: Image.asset(movie.imageUrl,
                      fit: BoxFit.contain, width: 130.0),
                ),
                Positioned(
                  left: 2.0,
                  bottom: -8.0,
                  child: Text(
                    movie.rank.toString(),
                    style: const TextStyle(
                        fontSize: 50.0,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        shadows: [
                          Shadow(
                              color: Colors.black54,
                              offset: Offset(2, 2),
                              blurRadius: 4.0)
                        ]),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10.0),
          Text(
            movie.title,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(
            "현재 예매율 ${movie.rating}",
            style: const TextStyle(color: Colors.grey, fontSize: 10.0),
          )
        ],
      ));
}
