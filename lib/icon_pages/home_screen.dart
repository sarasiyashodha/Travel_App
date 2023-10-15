import 'package:flutter/material.dart';
import 'package:travel_app/constants.dart';
import 'package:travel_app/lists/lists.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  Lists list = Lists();
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SafeArea(
            child: Container(
              padding: EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.menu),
                  Container(
                    width: 50.0,
                    height: 50.0,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 5.0,
          ),
          Container(
            margin: EdgeInsets.all(20.0),
            child: Text(
              'Discover',
              style: kTitleTextStyle,
            ),
          ),
          SizedBox(
            height: 5.0,
          ),
          Container(
            child: TabBar(
              indicatorSize: TabBarIndicatorSize.label,
              labelPadding: EdgeInsets.only(left: 20.0, right: 20.0),
              isScrollable: true,
              unselectedLabelColor: Colors.grey,
              labelColor: Colors.black,
              controller: _tabController,
              tabs: [
                Tab(
                  text: 'Places',
                ),
                Tab(
                  text: 'Inspiration',
                ),
                Tab(
                  text: 'Emotions',
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 20.0, top: 20.0),
            height: 300,
            width: double.maxFinite,
            child: TabBarView(
              controller: _tabController,
              children: [
                ListView.builder(
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      margin: EdgeInsets.only(right: 20.0),
                      width: 200.0,
                      height: 300.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        image: DecorationImage(
                          image:
                              AssetImage('images/${list.placeImages[index]}'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  },
                  itemCount: list.placeImages.length,
                  scrollDirection: Axis.horizontal,
                ),
                Text('HI'),
                Text('bye'),
              ],
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
            margin: EdgeInsets.only(left: 20.0, right: 20.0),
            child: Row(
              textBaseline: TextBaseline.alphabetic,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              children: [
                Text(
                  'Explore more',
                  style: kSubTitleTextStyle,
                ),
                Text(
                  'See all',
                  style: TextStyle(
                    color: Color(0xFF6A89CC),
                    decoration: TextDecoration.underline,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 100.0,
            width: double.maxFinite,
            child: ListView.builder(
              itemCount: list.iconImages.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  margin: EdgeInsets.only(left: 20.0, top: 10.0),
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 20.0),
                        width: 70.0,
                        height: 70.0,
                        decoration: BoxDecoration(
                          color: Color(0xFFDFF9FB),
                          borderRadius: BorderRadius.circular(10.0),
                          image: DecorationImage(
                            image:
                                AssetImage('images/${list.iconImages[index]}'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 2.0,
                      ),
                      Text(list.iconText[index]),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
