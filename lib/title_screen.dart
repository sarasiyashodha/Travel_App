import 'package:flutter/material.dart';
import 'package:travel_app/constants.dart';
import 'package:travel_app/lists/lists.dart';

class TitleScreen extends StatefulWidget {
  const TitleScreen({super.key});

  @override
  State<TitleScreen> createState() => _TitleScreenState();
}

class _TitleScreenState extends State<TitleScreen> {
  Lists list = Lists();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        itemBuilder: (context, index) {
          return Container(
            width: double.maxFinite,
            height: double.maxFinite,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/${list.titleImages[index]}'),
                fit: BoxFit.cover,
              ),
            ),
            child: SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //Description of places
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          SizedBox(
                            height: 120.0,
                          ),
                          Container(
                            padding: EdgeInsets.all(5.0),
                            width: 300.0,
                            height: 450.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              color: Colors.white.withOpacity(0.5),
                            ),
                            child: Column(
                              children: [
                                Text(
                                  'Travel',
                                  style: kTitleTextStyle,
                                ),
                                SizedBox(
                                  height: 20.0,
                                ),
                                Text(
                                  list.places[index],
                                  style: kPlaceTextStyle,
                                ),
                                SizedBox(
                                  height: 20.0,
                                ),
                                Text(
                                  list.descriptions[index],
                                  style: kDescriptionTextStyle,
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  //Button
                  TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Color(0xFF1E3799),
                      padding: EdgeInsets.symmetric(
                          vertical: 15.0, horizontal: 40.0),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/second');
                    },
                    child: Text(
                      'Go',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  //Scroll bar
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      list.titleImages.length,
                      (indexScroll) {
                        return Container(
                          margin: EdgeInsets.all(8.0),
                          width: 25.0,
                          height: 8.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            color: index == indexScroll
                                ? Color(0xFF1E3799)
                                : Color(0xFF6A89CC),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          );
        },
        itemCount: list.titleImages.length,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
