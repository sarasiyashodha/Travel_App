import 'package:flutter/material.dart';
import 'package:travel_app/constants.dart';
import 'package:travel_app/lists/lists.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  Lists list = Lists();
  int ratedStars = 3;
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Stack(
          children: [
            Positioned(
              child: Container(
                width: double.maxFinite,
                height: 400.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/waterfall3.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 70.0,
              left: 20.0,
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.menu,
                      color: Color(0xFFDFF9FB),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 330.0,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 500.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30.0),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding:
                          EdgeInsets.only(left: 20.0, top: 20.0, right: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Angel',
                            style: kTitleTextStyle,
                          ),
                          Text(
                            '\$250',
                            style: TextStyle(
                              color: Color(0xFF6A89CC),
                              fontSize: 25.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 20.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            color: Color(0xFF6A89CC),
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Text(
                            'Boliver state, Venizula',
                            style: TextStyle(
                              color: Color(0xFF6A89CC),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 20.0),
                      child: Row(
                        children: [
                          Wrap(
                            children: List.generate(
                              5,
                              (index) {
                                return Icon(
                                  Icons.star,
                                  color: index <= ratedStars
                                      ? Color(0xFFF1C40F)
                                      : Color(0xFF7F8C8D),
                                );
                              },
                            ),
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          Text(
                            '(4.0)',
                            style: TextStyle(
                              color: Color(0xFF6A89CC),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 20.0),
                      child: Text(
                        'People',
                        style: kSubTitleTextStyle,
                      ),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 20.0),
                      child: Text(
                        'Number of people in your group',
                        style: TextStyle(color: Colors.black54),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 10.0),
                      child: Row(
                        children: List.generate(
                          5,
                          (indexButton) {
                            return Container(
                              margin: EdgeInsets.only(left: 10.0),
                              child: TextButton(
                                style: TextButton.styleFrom(
                                  backgroundColor: selectedIndex == indexButton
                                      ? Color(0xFF1E3799)
                                      : Color(0xFFDFF9FB),
                                  padding: EdgeInsets.only(
                                      left: 10.0,
                                      top: 20.0,
                                      right: 10.0,
                                      bottom: 20.0),
                                  shape: new RoundedRectangleBorder(
                                      borderRadius:
                                          new BorderRadius.circular(10.0)),
                                ),
                                onPressed: () {
                                  setState(() {
                                    selectedIndex = indexButton;
                                  });
                                },
                                child: Text(
                                  (indexButton + 1).toString(),
                                  style: TextStyle(
                                      color: selectedIndex == indexButton
                                          ? Colors.white
                                          : Colors.black),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20.0),
                      child: Text(
                        'Description',
                        style: kSubTitleTextStyle,
                      ),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Text(
                        'Angel Falls is the world\'s highest uninterrupted waterfall. The waterfall drops from a height of 979m with a plunge of 807m and has a width of approximately 150m.',
                        style: TextStyle(
                          color: Colors.black54,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 10.0,
              child: Container(
                margin: EdgeInsets.only(left: 20.0),
                child: Row(
                  children: [
                    Container(
                      width: 60.0,
                      height: 60.0,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: Color(0xFF6A89CC),
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                      ),
                      child: Icon(
                        Icons.favorite_border,
                        color: Color(0xFF6A89CC),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 20.0, right: 20.0),
                      height: 60.0,
                      width: 300.0,
                      decoration: BoxDecoration(
                        color: Color(0xFF1E3799),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Book trip now',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                            ),
                          ),
                          Icon(
                            Icons.double_arrow_rounded,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
