import 'package:cgv_clone/widgets/image_slider_widget.dart';
import 'package:cgv_clone/widgets/movie_chart_widget.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> menuItems = ["홈", "이벤트", "무비톡", "패스트오더", "기프트샵", "@GCV"];
    List<String> bannerUrlItems = [
      "assets/images/banner_01.jpg",
      "assets/images/banner_02.jpg",
      "assets/images/banner_03.jpg",
      "assets/images/banner_04.jpg"
    ];
    return DefaultTabController(
      length: menuItems.length,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "GCV",
            style: TextStyle(
                fontSize: 26.0, color: Colors.red, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.white,
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.airplane_ticket_outlined)),
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.movie_outlined)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
          ],
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(40.0),
            child: Container(
              color: Colors.red,
              width: double.infinity,
              child: TabBar(
                tabs: List.generate(
                    menuItems.length,
                    (index) => Tab(
                          text: menuItems[index],
                        )),
                unselectedLabelColor: Colors.white,
                labelColor: Colors.white,
                indicatorColor: Colors.white,
                indicatorSize: TabBarIndicatorSize.label,
                dividerColor: Colors.transparent,
                isScrollable: true,
              ),
            ),
          ),
        ),
        body: TabBarView(
          children: [
            ListView(
              children: [
                ImageSliderWidget(bannerUrlItems: bannerUrlItems),
                const MovieChartWidget()
              ],
            ),
            Center(child: Text("이벤트 화면 입니다")),
            Center(child: Text("무비톡 화면 입니다")),
            Center(child: Text("패스트오더 화면 입니다")),
            Center(child: Text("기프트샵 화면 입니다")),
            Center(child: Text("@GCV 화면 입니다"))
          ],
        ),
      ),
    );
  }
}
